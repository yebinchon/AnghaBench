
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int bytea ;
struct TYPE_5__ {int magic; int type; int nitems; TYPE_1__* items; } ;
struct TYPE_4__ {int ndistinct; int attrs; } ;
typedef int Size ;
typedef TYPE_1__ MVNDistinctItem ;
typedef TYPE_2__ MVNDistinct ;
typedef int AttrNumber ;


 int Assert (int) ;
 int SET_VARSIZE (int *,int) ;
 int STATS_NDISTINCT_MAGIC ;
 int STATS_NDISTINCT_TYPE_BASIC ;
 int SizeOfHeader ;
 int SizeOfItem (int) ;
 char* VARDATA (int *) ;
 int VARHDRSZ ;
 int bms_next_member (int ,int) ;
 int bms_num_members (int ) ;
 int memcpy (char*,int*,int) ;
 scalar_t__ palloc (int) ;

bytea *
statext_ndistinct_serialize(MVNDistinct *ndistinct)
{
 int i;
 bytea *output;
 char *tmp;
 Size len;

 Assert(ndistinct->magic == STATS_NDISTINCT_MAGIC);
 Assert(ndistinct->type == STATS_NDISTINCT_TYPE_BASIC);





 len = VARHDRSZ + SizeOfHeader;


 for (i = 0; i < ndistinct->nitems; i++)
 {
  int nmembers;

  nmembers = bms_num_members(ndistinct->items[i].attrs);
  Assert(nmembers >= 2);

  len += SizeOfItem(nmembers);
 }

 output = (bytea *) palloc(len);
 SET_VARSIZE(output, len);

 tmp = VARDATA(output);


 memcpy(tmp, &ndistinct->magic, sizeof(uint32));
 tmp += sizeof(uint32);
 memcpy(tmp, &ndistinct->type, sizeof(uint32));
 tmp += sizeof(uint32);
 memcpy(tmp, &ndistinct->nitems, sizeof(uint32));
 tmp += sizeof(uint32);




 for (i = 0; i < ndistinct->nitems; i++)
 {
  MVNDistinctItem item = ndistinct->items[i];
  int nmembers = bms_num_members(item.attrs);
  int x;

  memcpy(tmp, &item.ndistinct, sizeof(double));
  tmp += sizeof(double);
  memcpy(tmp, &nmembers, sizeof(int));
  tmp += sizeof(int);

  x = -1;
  while ((x = bms_next_member(item.attrs, x)) >= 0)
  {
   AttrNumber value = (AttrNumber) x;

   memcpy(tmp, &value, sizeof(AttrNumber));
   tmp += sizeof(AttrNumber);
  }


  Assert(tmp <= ((char *) output + len));
 }


 Assert(tmp == ((char *) output + len));

 return output;
}
