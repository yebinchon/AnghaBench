
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_13__ {int collisions; int accesses; } ;
struct TYPE_12__ {scalar_t__ hashvalue; struct TYPE_12__* link; } ;
struct TYPE_11__ {scalar_t__ sshift; scalar_t__ (* hash ) (void const*,int ) ;scalar_t__ (* match ) (int ,void const*,int ) ;int (* keycopy ) (int ,void const*,int ) ;int keysize; TYPE_2__*** dir; int ssize; int tabname; scalar_t__ frozen; TYPE_3__* hctl; } ;
typedef int Size ;
typedef scalar_t__ (* HashCompareFunc ) (int ,void const*,int ) ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__** HASHSEGMENT ;
typedef TYPE_3__ HASHHDR ;
typedef TYPE_2__ HASHELEMENT ;
typedef TYPE_2__* HASHBUCKET ;


 int ELEMENTKEY (TYPE_2__*) ;
 TYPE_2__* ELEMENT_FROM_KEY (void*) ;
 int ERROR ;
 long MOD (scalar_t__,int ) ;
 scalar_t__ calc_bucket (TYPE_3__*,scalar_t__) ;
 int elog (int ,char*,int ) ;
 int hash_accesses ;
 int hash_collisions ;
 int hash_corrupted (TYPE_1__*) ;
 scalar_t__ stub1 (void const*,int ) ;
 int stub2 (int ,void const*,int ) ;

bool
hash_update_hash_key(HTAB *hashp,
      void *existingEntry,
      const void *newKeyPtr)
{
 HASHELEMENT *existingElement = ELEMENT_FROM_KEY(existingEntry);
 HASHHDR *hctl = hashp->hctl;
 uint32 newhashvalue;
 Size keysize;
 uint32 bucket;
 uint32 newbucket;
 long segment_num;
 long segment_ndx;
 HASHSEGMENT segp;
 HASHBUCKET currBucket;
 HASHBUCKET *prevBucketPtr;
 HASHBUCKET *oldPrevPtr;
 HashCompareFunc match;







 if (hashp->frozen)
  elog(ERROR, "cannot update in frozen hashtable \"%s\"",
    hashp->tabname);






 bucket = calc_bucket(hctl, existingElement->hashvalue);

 segment_num = bucket >> hashp->sshift;
 segment_ndx = MOD(bucket, hashp->ssize);

 segp = hashp->dir[segment_num];

 if (segp == ((void*)0))
  hash_corrupted(hashp);

 prevBucketPtr = &segp[segment_ndx];
 currBucket = *prevBucketPtr;

 while (currBucket != ((void*)0))
 {
  if (currBucket == existingElement)
   break;
  prevBucketPtr = &(currBucket->link);
  currBucket = *prevBucketPtr;
 }

 if (currBucket == ((void*)0))
  elog(ERROR, "hash_update_hash_key argument is not in hashtable \"%s\"",
    hashp->tabname);

 oldPrevPtr = prevBucketPtr;





 newhashvalue = hashp->hash(newKeyPtr, hashp->keysize);

 newbucket = calc_bucket(hctl, newhashvalue);

 segment_num = newbucket >> hashp->sshift;
 segment_ndx = MOD(newbucket, hashp->ssize);

 segp = hashp->dir[segment_num];

 if (segp == ((void*)0))
  hash_corrupted(hashp);

 prevBucketPtr = &segp[segment_ndx];
 currBucket = *prevBucketPtr;




 match = hashp->match;
 keysize = hashp->keysize;

 while (currBucket != ((void*)0))
 {
  if (currBucket->hashvalue == newhashvalue &&
   match(ELEMENTKEY(currBucket), newKeyPtr, keysize) == 0)
   break;
  prevBucketPtr = &(currBucket->link);
  currBucket = *prevBucketPtr;




 }

 if (currBucket != ((void*)0))
  return 0;

 currBucket = existingElement;
 if (bucket != newbucket)
 {

  *oldPrevPtr = currBucket->link;


  *prevBucketPtr = currBucket;
  currBucket->link = ((void*)0);
 }


 currBucket->hashvalue = newhashvalue;
 hashp->keycopy(ELEMENTKEY(currBucket), newKeyPtr, keysize);



 return 1;
}
