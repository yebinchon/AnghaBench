#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_13__ {int /*<<< orphan*/  collisions; int /*<<< orphan*/  accesses; } ;
struct TYPE_12__ {scalar_t__ hashvalue; struct TYPE_12__* link; } ;
struct TYPE_11__ {scalar_t__ sshift; scalar_t__ (* hash ) (void const*,int /*<<< orphan*/ ) ;scalar_t__ (* match ) (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* keycopy ) (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  keysize; TYPE_2__*** dir; int /*<<< orphan*/  ssize; int /*<<< orphan*/  tabname; scalar_t__ frozen; TYPE_3__* hctl; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  scalar_t__ (* HashCompareFunc ) (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ;
typedef  TYPE_1__ HTAB ;
typedef  TYPE_2__** HASHSEGMENT ;
typedef  TYPE_3__ HASHHDR ;
typedef  TYPE_2__ HASHELEMENT ;
typedef  TYPE_2__* HASHBUCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (void*) ; 
 int /*<<< orphan*/  ERROR ; 
 long FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hash_accesses ; 
 int /*<<< orphan*/  hash_collisions ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 

bool
FUNC8(HTAB *hashp,
					 void *existingEntry,
					 const void *newKeyPtr)
{
	HASHELEMENT *existingElement = FUNC1(existingEntry);
	HASHHDR    *hctl = hashp->hctl;
	uint32		newhashvalue;
	Size		keysize;
	uint32		bucket;
	uint32		newbucket;
	long		segment_num;
	long		segment_ndx;
	HASHSEGMENT segp;
	HASHBUCKET	currBucket;
	HASHBUCKET *prevBucketPtr;
	HASHBUCKET *oldPrevPtr;
	HashCompareFunc match;

#ifdef HASH_STATISTICS
	hash_accesses++;
	hctl->accesses++;
#endif

	/* disallow updates if frozen */
	if (hashp->frozen)
		FUNC4(ERROR, "cannot update in frozen hashtable \"%s\"",
			 hashp->tabname);

	/*
	 * Lookup the existing element using its saved hash value.  We need to do
	 * this to be able to unlink it from its hash chain, but as a side benefit
	 * we can verify the validity of the passed existingEntry pointer.
	 */
	bucket = FUNC3(hctl, existingElement->hashvalue);

	segment_num = bucket >> hashp->sshift;
	segment_ndx = FUNC2(bucket, hashp->ssize);

	segp = hashp->dir[segment_num];

	if (segp == NULL)
		FUNC5(hashp);

	prevBucketPtr = &segp[segment_ndx];
	currBucket = *prevBucketPtr;

	while (currBucket != NULL)
	{
		if (currBucket == existingElement)
			break;
		prevBucketPtr = &(currBucket->link);
		currBucket = *prevBucketPtr;
	}

	if (currBucket == NULL)
		FUNC4(ERROR, "hash_update_hash_key argument is not in hashtable \"%s\"",
			 hashp->tabname);

	oldPrevPtr = prevBucketPtr;

	/*
	 * Now perform the equivalent of a HASH_ENTER operation to locate the hash
	 * chain we want to put the entry into.
	 */
	newhashvalue = hashp->hash(newKeyPtr, hashp->keysize);

	newbucket = FUNC3(hctl, newhashvalue);

	segment_num = newbucket >> hashp->sshift;
	segment_ndx = FUNC2(newbucket, hashp->ssize);

	segp = hashp->dir[segment_num];

	if (segp == NULL)
		FUNC5(hashp);

	prevBucketPtr = &segp[segment_ndx];
	currBucket = *prevBucketPtr;

	/*
	 * Follow collision chain looking for matching key
	 */
	match = hashp->match;		/* save one fetch in inner loop */
	keysize = hashp->keysize;	/* ditto */

	while (currBucket != NULL)
	{
		if (currBucket->hashvalue == newhashvalue &&
			match(FUNC0(currBucket), newKeyPtr, keysize) == 0)
			break;
		prevBucketPtr = &(currBucket->link);
		currBucket = *prevBucketPtr;
#ifdef HASH_STATISTICS
		hash_collisions++;
		hctl->collisions++;
#endif
	}

	if (currBucket != NULL)
		return false;			/* collision with an existing entry */

	currBucket = existingElement;

	/*
	 * If old and new hash values belong to the same bucket, we need not
	 * change any chain links, and indeed should not since this simplistic
	 * update will corrupt the list if currBucket is the last element.  (We
	 * cannot fall out earlier, however, since we need to scan the bucket to
	 * check for duplicate keys.)
	 */
	if (bucket != newbucket)
	{
		/* OK to remove record from old hash bucket's chain. */
		*oldPrevPtr = currBucket->link;

		/* link into new hashbucket chain */
		*prevBucketPtr = currBucket;
		currBucket->link = NULL;
	}

	/* copy new key into record */
	currBucket->hashvalue = newhashvalue;
	hashp->keycopy(FUNC0(currBucket), newKeyPtr, keysize);

	/* rest of record is untouched */

	return true;
}