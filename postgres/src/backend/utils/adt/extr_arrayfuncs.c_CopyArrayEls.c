
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;
typedef int Datum ;
typedef int ArrayType ;


 char* ARR_DATA_PTR (int *) ;
 int* ARR_NULLBITMAP (int *) ;
 int ArrayCastAndSet (int ,int,int,char,char*) ;
 int DatumGetPointer (int ) ;
 int ERROR ;
 int elog (int ,char*) ;
 int pfree (int ) ;

void
CopyArrayEls(ArrayType *array,
    Datum *values,
    bool *nulls,
    int nitems,
    int typlen,
    bool typbyval,
    char typalign,
    bool freedata)
{
 char *p = ARR_DATA_PTR(array);
 bits8 *bitmap = ARR_NULLBITMAP(array);
 int bitval = 0;
 int bitmask = 1;
 int i;

 if (typbyval)
  freedata = 0;

 for (i = 0; i < nitems; i++)
 {
  if (nulls && nulls[i])
  {
   if (!bitmap)
    elog(ERROR, "null array element where not supported");

  }
  else
  {
   bitval |= bitmask;
   p += ArrayCastAndSet(values[i], typlen, typbyval, typalign, p);
   if (freedata)
    pfree(DatumGetPointer(values[i]));
  }
  if (bitmap)
  {
   bitmask <<= 1;
   if (bitmask == 0x100)
   {
    *bitmap++ = bitval;
    bitval = 0;
    bitmask = 1;
   }
  }
 }

 if (bitmap && bitmask != 1)
  *bitmap = bitval;
}
