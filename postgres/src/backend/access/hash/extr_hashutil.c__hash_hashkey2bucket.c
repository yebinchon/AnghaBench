
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Bucket ;



Bucket
_hash_hashkey2bucket(uint32 hashkey, uint32 maxbucket,
      uint32 highmask, uint32 lowmask)
{
 Bucket bucket;

 bucket = hashkey & highmask;
 if (bucket > maxbucket)
  bucket = bucket & lowmask;

 return bucket;
}
