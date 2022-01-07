
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
typedef int int16 ;
struct TYPE_8__ {int indexsize; int t; int size; } ;
typedef TYPE_1__ gbtree_ninfo ;
typedef int float8 ;
typedef int float4 ;
typedef int Timestamp ;
typedef int TimeADT ;
struct TYPE_9__ {int offset; int page; int rel; int key; scalar_t__ leafkey; } ;
typedef TYPE_2__ GISTENTRY ;
typedef int GBT_NUMKEY ;
typedef int DateADT ;
typedef int Cash ;


 int Assert (int) ;
 int DatumGetCash (int ) ;
 int DatumGetDateADT (int ) ;
 int DatumGetFloat4 (int ) ;
 int DatumGetFloat8 (int ) ;
 int DatumGetInt16 (int ) ;
 int DatumGetInt32 (int ) ;
 int DatumGetInt64 (int ) ;
 int DatumGetObjectId (int ) ;
 void* DatumGetPointer (int ) ;
 int DatumGetTimeADT (int ) ;
 int DatumGetTimestamp (int ) ;
 int PointerGetDatum (int *) ;
 int gistentryinit (TYPE_2__,int ,int ,int ,int ,int) ;
 int memcpy (void*,void*,int) ;
 TYPE_2__* palloc (int) ;
 scalar_t__ palloc0 (int) ;

GISTENTRY *
gbt_num_compress(GISTENTRY *entry, const gbtree_ninfo *tinfo)
{
 GISTENTRY *retval;

 if (entry->leafkey)
 {
  union
  {
   int16 i2;
   int32 i4;
   int64 i8;
   float4 f4;
   float8 f8;
   DateADT dt;
   TimeADT tm;
   Timestamp ts;
   Cash ch;
  } v;

  GBT_NUMKEY *r = (GBT_NUMKEY *) palloc0(tinfo->indexsize);
  void *leaf = ((void*)0);

  switch (tinfo->t)
  {
   case 133:
    v.i2 = DatumGetInt16(entry->key);
    leaf = &v.i2;
    break;
   case 132:
    v.i4 = DatumGetInt32(entry->key);
    leaf = &v.i4;
    break;
   case 131:
    v.i8 = DatumGetInt64(entry->key);
    leaf = &v.i8;
    break;
   case 130:
   case 136:
    v.i4 = DatumGetObjectId(entry->key);
    leaf = &v.i4;
    break;
   case 135:
    v.f4 = DatumGetFloat4(entry->key);
    leaf = &v.f4;
    break;
   case 134:
    v.f8 = DatumGetFloat8(entry->key);
    leaf = &v.f8;
    break;
   case 137:
    v.dt = DatumGetDateADT(entry->key);
    leaf = &v.dt;
    break;
   case 129:
    v.tm = DatumGetTimeADT(entry->key);
    leaf = &v.tm;
    break;
   case 128:
    v.ts = DatumGetTimestamp(entry->key);
    leaf = &v.ts;
    break;
   case 138:
    v.ch = DatumGetCash(entry->key);
    leaf = &v.ch;
    break;
   default:
    leaf = DatumGetPointer(entry->key);
  }

  Assert(tinfo->indexsize >= 2 * tinfo->size);

  memcpy((void *) &r[0], leaf, tinfo->size);
  memcpy((void *) &r[tinfo->size], leaf, tinfo->size);
  retval = palloc(sizeof(GISTENTRY));
  gistentryinit(*retval, PointerGetDatum(r), entry->rel, entry->page,
       entry->offset, 0);
 }
 else
  retval = entry;

 return retval;
}
