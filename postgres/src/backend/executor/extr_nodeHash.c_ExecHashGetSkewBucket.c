
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int skewBucketLen; TYPE_1__** skewBucket; int skewEnabled; } ;
struct TYPE_4__ {int hashvalue; } ;
typedef TYPE_2__* HashJoinTable ;


 int INVALID_SKEW_BUCKET_NO ;

int
ExecHashGetSkewBucket(HashJoinTable hashtable, uint32 hashvalue)
{
 int bucket;





 if (!hashtable->skewEnabled)
  return INVALID_SKEW_BUCKET_NO;




 bucket = hashvalue & (hashtable->skewBucketLen - 1);






 while (hashtable->skewBucket[bucket] != ((void*)0) &&
     hashtable->skewBucket[bucket]->hashvalue != hashvalue)
  bucket = (bucket + 1) & (hashtable->skewBucketLen - 1);




 if (hashtable->skewBucket[bucket] != ((void*)0))
  return bucket;




 return INVALID_SKEW_BUCKET_NO;
}
