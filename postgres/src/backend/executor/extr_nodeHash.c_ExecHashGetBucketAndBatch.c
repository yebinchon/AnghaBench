
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int log2_nbuckets; int nbatch; int nbuckets; } ;
typedef TYPE_1__* HashJoinTable ;



void
ExecHashGetBucketAndBatch(HashJoinTable hashtable,
        uint32 hashvalue,
        int *bucketno,
        int *batchno)
{
 uint32 nbuckets = (uint32) hashtable->nbuckets;
 uint32 nbatch = (uint32) hashtable->nbatch;

 if (nbatch > 1)
 {

  *bucketno = hashvalue & (nbuckets - 1);
  *batchno = (hashvalue >> hashtable->log2_nbuckets) & (nbatch - 1);
 }
 else
 {
  *bucketno = hashvalue & (nbuckets - 1);
  *batchno = 0;
 }
}
