
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_13__ {int* indexes; int null_index; int default_index; } ;
struct TYPE_12__ {TYPE_4__* boundinfo; } ;
struct TYPE_11__ {TYPE_3__* partdesc; TYPE_1__* key; } ;
struct TYPE_10__ {int strategy; int partnatts; int partcollation; int partsupfunc; } ;
typedef TYPE_1__* PartitionKey ;
typedef TYPE_2__* PartitionDispatch ;
typedef TYPE_3__* PartitionDesc ;
typedef TYPE_4__* PartitionBoundInfo ;
typedef int Datum ;


 int ERROR ;



 int compute_partition_hash_value (int,int ,int ,int *,int*) ;
 int elog (int ,char*,int) ;
 int get_hash_partition_greatest_modulus (TYPE_4__*) ;
 int partition_bound_accepts_nulls (TYPE_4__*) ;
 int partition_list_bsearch (int ,int ,TYPE_4__*,int ,int*) ;
 int partition_range_datum_bsearch (int ,int ,TYPE_4__*,int,int *,int*) ;

__attribute__((used)) static int
get_partition_for_tuple(PartitionDispatch pd, Datum *values, bool *isnull)
{
 int bound_offset;
 int part_index = -1;
 PartitionKey key = pd->key;
 PartitionDesc partdesc = pd->partdesc;
 PartitionBoundInfo boundinfo = partdesc->boundinfo;


 switch (key->strategy)
 {
  case 130:
   {
    int greatest_modulus;
    uint64 rowHash;

    greatest_modulus = get_hash_partition_greatest_modulus(boundinfo);
    rowHash = compute_partition_hash_value(key->partnatts,
                key->partsupfunc,
                key->partcollation,
                values, isnull);

    part_index = boundinfo->indexes[rowHash % greatest_modulus];
   }
   break;

  case 129:
   if (isnull[0])
   {
    if (partition_bound_accepts_nulls(boundinfo))
     part_index = boundinfo->null_index;
   }
   else
   {
    bool equal = 0;

    bound_offset = partition_list_bsearch(key->partsupfunc,
               key->partcollation,
               boundinfo,
               values[0], &equal);
    if (bound_offset >= 0 && equal)
     part_index = boundinfo->indexes[bound_offset];
   }
   break;

  case 128:
   {
    bool equal = 0,
       range_partkey_has_null = 0;
    int i;





    for (i = 0; i < key->partnatts; i++)
    {
     if (isnull[i])
     {
      range_partkey_has_null = 1;
      break;
     }
    }

    if (!range_partkey_has_null)
    {
     bound_offset = partition_range_datum_bsearch(key->partsupfunc,
                 key->partcollation,
                 boundinfo,
                 key->partnatts,
                 values,
                 &equal);







     part_index = boundinfo->indexes[bound_offset + 1];
    }
   }
   break;

  default:
   elog(ERROR, "unexpected partition strategy: %d",
     (int) key->strategy);
 }





 if (part_index < 0)
  part_index = boundinfo->default_index;

 return part_index;
}
