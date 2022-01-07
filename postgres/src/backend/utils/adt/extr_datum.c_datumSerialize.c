
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExpandedObjectHeader ;
typedef char Datum ;


 int * DatumGetEOHP (char) ;
 char* DatumGetPointer (char) ;
 int EOH_flatten_into (int *,void*,int) ;
 int EOH_get_flat_size (int *) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (char*) ;
 int datumGetSize (char,int,int) ;
 int memcpy (char*,...) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;

void
datumSerialize(Datum value, bool isnull, bool typByVal, int typLen,
      char **start_address)
{
 ExpandedObjectHeader *eoh = ((void*)0);
 int header;


 if (isnull)
  header = -2;
 else if (typByVal)
  header = -1;
 else if (typLen == -1 &&
    VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(value)))
 {
  eoh = DatumGetEOHP(value);
  header = EOH_get_flat_size(eoh);
 }
 else
  header = datumGetSize(value, typByVal, typLen);
 memcpy(*start_address, &header, sizeof(int));
 *start_address += sizeof(int);


 if (!isnull)
 {
  if (typByVal)
  {
   memcpy(*start_address, &value, sizeof(Datum));
   *start_address += sizeof(Datum);
  }
  else if (eoh)
  {
   char *tmp;





   tmp = (char *) palloc(header);
   EOH_flatten_into(eoh, (void *) tmp, header);
   memcpy(*start_address, tmp, header);
   *start_address += header;


   pfree(tmp);
  }
  else
  {
   memcpy(*start_address, DatumGetPointer(value), header);
   *start_address += header;
  }
 }
}
