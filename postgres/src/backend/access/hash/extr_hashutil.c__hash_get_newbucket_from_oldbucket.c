
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int Relation ;
typedef scalar_t__ Bucket ;


 scalar_t__ CALC_NEW_BUCKET (scalar_t__,scalar_t__) ;

Bucket
_hash_get_newbucket_from_oldbucket(Relation rel, Bucket old_bucket,
           uint32 lowmask, uint32 maxbucket)
{
 Bucket new_bucket;

 new_bucket = CALC_NEW_BUCKET(old_bucket, lowmask);
 if (new_bucket > maxbucket)
 {
  lowmask = lowmask >> 1;
  new_bucket = CALC_NEW_BUCKET(old_bucket, lowmask);
 }

 return new_bucket;
}
