#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_7__ ;
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
struct TYPE_37__ {int nused; int /*<<< orphan*/  parent; int /*<<< orphan*/  magic; } ;
struct TYPE_36__ {TYPE_1__* internal_key; TYPE_6__* leaf_key; } ;
struct TYPE_41__ {TYPE_3__ hdr; TYPE_2__ u; } ;
struct TYPE_40__ {scalar_t__ first_page; scalar_t__ npages; } ;
struct TYPE_39__ {int index; scalar_t__ split_pages; TYPE_7__* page; int /*<<< orphan*/  found; } ;
struct TYPE_38__ {int btree_depth; scalar_t__ singleton_npages; scalar_t__ singleton_first_page; scalar_t__ btree_recycle_count; int /*<<< orphan*/  btree_root; int /*<<< orphan*/  btree_recycle; } ;
struct TYPE_35__ {scalar_t__ first_page; int /*<<< orphan*/  child; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_4__ FreePageManager ;
typedef  TYPE_5__ FreePageBtreeSearchResult ;
typedef  TYPE_6__ FreePageBtreeLeafKey ;
typedef  TYPE_7__ FreePageBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FPM_ITEMS_PER_INTERNAL_PAGE ; 
 scalar_t__ FPM_ITEMS_PER_LEAF_PAGE ; 
 int /*<<< orphan*/  FREE_PAGE_INTERNAL_MAGIC ; 
 int /*<<< orphan*/  FREE_PAGE_LEAF_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_7__*) ; 
 TYPE_7__* FUNC2 (char*,TYPE_7__*) ; 
 void* FUNC3 (TYPE_7__*) ; 
 TYPE_7__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_7__*,scalar_t__,scalar_t__,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__,TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_7__*,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_7__*,scalar_t__) ; 
 TYPE_7__* FUNC12 (TYPE_4__*,TYPE_7__*) ; 
 scalar_t__ FUNC13 (TYPE_4__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC17 (char*,scalar_t__) ; 
 char* FUNC18 (TYPE_4__*) ; 
 TYPE_7__* FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,TYPE_7__*) ; 

__attribute__((used)) static Size
FUNC22(FreePageManager *fpm, Size first_page, Size npages,
						   bool soft)
{
	char	   *base = FUNC18(fpm);
	FreePageBtreeSearchResult result;
	FreePageBtreeLeafKey *prevkey = NULL;
	FreePageBtreeLeafKey *nextkey = NULL;
	FreePageBtree *np;
	Size		nindex;

	FUNC0(npages > 0);

	/* We can store a single free span without initializing the btree. */
	if (fpm->btree_depth == 0)
	{
		if (fpm->singleton_npages == 0)
		{
			/* Don't have a span yet; store this one. */
			fpm->singleton_first_page = first_page;
			fpm->singleton_npages = npages;
			FUNC15(fpm, first_page, npages);
			return fpm->singleton_npages;
		}
		else if (fpm->singleton_first_page + fpm->singleton_npages ==
				 first_page)
		{
			/* New span immediately follows sole existing span. */
			fpm->singleton_npages += npages;
			FUNC14(fpm, fpm->singleton_first_page);
			FUNC15(fpm, fpm->singleton_first_page,
								   fpm->singleton_npages);
			return fpm->singleton_npages;
		}
		else if (first_page + npages == fpm->singleton_first_page)
		{
			/* New span immediately precedes sole existing span. */
			FUNC14(fpm, fpm->singleton_first_page);
			fpm->singleton_first_page = first_page;
			fpm->singleton_npages += npages;
			FUNC15(fpm, fpm->singleton_first_page,
								   fpm->singleton_npages);
			return fpm->singleton_npages;
		}
		else
		{
			/* Not contiguous; we need to initialize the btree. */
			Size		root_page;
			FreePageBtree *root;

			if (!FUNC20(fpm->btree_recycle))
				root = FUNC4(fpm);
			else if (soft)
				return 0;		/* Should not allocate if soft. */
			else if (FUNC13(fpm, 1, &root_page))
				root = (FreePageBtree *) FUNC17(base, root_page);
			else
			{
				/* We'd better be able to get a page from the existing range. */
				FUNC16(FATAL, "free page manager btree is corrupt");
			}

			/* Create the btree and move the preexisting range into it. */
			root->hdr.magic = FREE_PAGE_LEAF_MAGIC;
			root->hdr.nused = 1;
			FUNC21(base, root->hdr.parent, (FreePageBtree *) NULL);
			root->u.leaf_key[0].first_page = fpm->singleton_first_page;
			root->u.leaf_key[0].npages = fpm->singleton_npages;
			FUNC21(base, fpm->btree_root, root);
			fpm->singleton_first_page = 0;
			fpm->singleton_npages = 0;
			fpm->btree_depth = 1;

			/*
			 * Corner case: it may be that the btree root took the very last
			 * free page.  In that case, the sole btree entry covers a zero
			 * page run, which is invalid.  Overwrite it with the entry we're
			 * trying to insert and get out.
			 */
			if (root->u.leaf_key[0].npages == 0)
			{
				root->u.leaf_key[0].first_page = first_page;
				root->u.leaf_key[0].npages = npages;
				FUNC15(fpm, first_page, npages);
				return npages;
			}

			/* Fall through to insert the new key. */
		}
	}

	/* Search the btree. */
	FUNC9(fpm, first_page, &result);
	FUNC0(!result.found);
	if (result.index > 0)
		prevkey = &result.page->u.leaf_key[result.index - 1];
	if (result.index < result.page->hdr.nused)
	{
		np = result.page;
		nindex = result.index;
		nextkey = &result.page->u.leaf_key[result.index];
	}
	else
	{
		np = FUNC2(base, result.page);
		nindex = 0;
		if (np != NULL)
			nextkey = &np->u.leaf_key[0];
	}

	/* Consolidate with the previous entry if possible. */
	if (prevkey != NULL && prevkey->first_page + prevkey->npages >= first_page)
	{
		bool		remove_next = false;
		Size		result;

		FUNC0(prevkey->first_page + prevkey->npages == first_page);
		prevkey->npages = (first_page - prevkey->first_page) + npages;

		/* Check whether we can *also* consolidate with the following entry. */
		if (nextkey != NULL &&
			prevkey->first_page + prevkey->npages >= nextkey->first_page)
		{
			FUNC0(prevkey->first_page + prevkey->npages ==
				   nextkey->first_page);
			prevkey->npages = (nextkey->first_page - prevkey->first_page)
				+ nextkey->npages;
			FUNC14(fpm, nextkey->first_page);
			remove_next = true;
		}

		/* Put the span on the correct freelist and save size. */
		FUNC14(fpm, prevkey->first_page);
		FUNC15(fpm, prevkey->first_page, prevkey->npages);
		result = prevkey->npages;

		/*
		 * If we consolidated with both the preceding and following entries,
		 * we must remove the following entry.  We do this last, because
		 * removing an element from the btree may invalidate pointers we hold
		 * into the current data structure.
		 *
		 * NB: The btree is technically in an invalid state a this point
		 * because we've already updated prevkey to cover the same key space
		 * as nextkey.  FreePageBtreeRemove() shouldn't notice that, though.
		 */
		if (remove_next)
			FUNC8(fpm, np, nindex);

		return result;
	}

	/* Consolidate with the next entry if possible. */
	if (nextkey != NULL && first_page + npages >= nextkey->first_page)
	{
		Size		newpages;

		/* Compute new size for span. */
		FUNC0(first_page + npages == nextkey->first_page);
		newpages = (nextkey->first_page - first_page) + nextkey->npages;

		/* Put span on correct free list. */
		FUNC14(fpm, nextkey->first_page);
		FUNC15(fpm, first_page, newpages);

		/* Update key in place. */
		nextkey->first_page = first_page;
		nextkey->npages = newpages;

		/* If reducing first key on page, ancestors might need adjustment. */
		if (nindex == 0)
			FUNC1(fpm, np);

		return nextkey->npages;
	}

	/* Split leaf page and as many of its ancestors as necessary. */
	if (result.split_pages > 0)
	{
		/*
		 * NB: We could consider various coping strategies here to avoid a
		 * split; most obviously, if np != result.page, we could target that
		 * page instead.   More complicated shuffling strategies could be
		 * possible as well; basically, unless every single leaf page is 100%
		 * full, we can jam this key in there if we try hard enough.  It's
		 * unlikely that trying that hard is worthwhile, but it's possible we
		 * might need to make more than no effort.  For now, we just do the
		 * easy thing, which is nothing.
		 */

		/* If this is a soft insert, it's time to give up. */
		if (soft)
			return 0;

		/* Check whether we need to allocate more btree pages to split. */
		if (result.split_pages > fpm->btree_recycle_count)
		{
			Size		pages_needed;
			Size		recycle_page;
			Size		i;

			/*
			 * Allocate the required number of pages and split each one in
			 * turn.  This should never fail, because if we've got enough
			 * spans of free pages kicking around that we need additional
			 * storage space just to remember them all, then we should
			 * certainly have enough to expand the btree, which should only
			 * ever use a tiny number of pages compared to the number under
			 * management.  If it does, something's badly screwed up.
			 */
			pages_needed = result.split_pages - fpm->btree_recycle_count;
			for (i = 0; i < pages_needed; ++i)
			{
				if (!FUNC13(fpm, 1, &recycle_page))
					FUNC16(FATAL, "free page manager btree is corrupt");
				FUNC7(fpm, recycle_page);
			}

			/*
			 * The act of allocating pages to recycle may have invalidated the
			 * results of our previous btree research, so repeat it. (We could
			 * recheck whether any of our split-avoidance strategies that were
			 * not viable before now are, but it hardly seems worthwhile, so
			 * we don't bother. Consolidation can't be possible now if it
			 * wasn't previously.)
			 */
			FUNC9(fpm, first_page, &result);

			/*
			 * The act of allocating pages for use in constructing our btree
			 * should never cause any page to become more full, so the new
			 * split depth should be no greater than the old one, and perhaps
			 * less if we fortuitously allocated a chunk that freed up a slot
			 * on the page we need to update.
			 */
			FUNC0(result.split_pages <= fpm->btree_recycle_count);
		}

		/* If we still need to perform a split, do it. */
		if (result.split_pages > 0)
		{
			FreePageBtree *split_target = result.page;
			FreePageBtree *child = NULL;
			Size		key = first_page;

			for (;;)
			{
				FreePageBtree *newsibling;
				FreePageBtree *parent;

				/* Identify parent page, which must receive downlink. */
				parent = FUNC19(base, split_target->hdr.parent);

				/* Split the page - downlink not added yet. */
				newsibling = FUNC12(fpm, split_target);

				/*
				 * At this point in the loop, we're always carrying a pending
				 * insertion.  On the first pass, it's the actual key we're
				 * trying to insert; on subsequent passes, it's the downlink
				 * that needs to be added as a result of the split performed
				 * during the previous loop iteration.  Since we've just split
				 * the page, there's definitely room on one of the two
				 * resulting pages.
				 */
				if (child == NULL)
				{
					Size		index;
					FreePageBtree *insert_into;

					insert_into = key < newsibling->u.leaf_key[0].first_page ?
						split_target : newsibling;
					index = FUNC11(insert_into, key);
					FUNC6(insert_into, index, key, npages);
					if (index == 0 && insert_into == split_target)
						FUNC1(fpm, split_target);
				}
				else
				{
					Size		index;
					FreePageBtree *insert_into;

					insert_into =
						key < newsibling->u.internal_key[0].first_page ?
						split_target : newsibling;
					index = FUNC10(insert_into, key);
					FUNC5(base, insert_into, index,
												key, child);
					FUNC21(base, child->hdr.parent, insert_into);
					if (index == 0 && insert_into == split_target)
						FUNC1(fpm, split_target);
				}

				/* If the page we just split has no parent, split the root. */
				if (parent == NULL)
				{
					FreePageBtree *newroot;

					newroot = FUNC4(fpm);
					newroot->hdr.magic = FREE_PAGE_INTERNAL_MAGIC;
					newroot->hdr.nused = 2;
					FUNC21(base, newroot->hdr.parent,
								 (FreePageBtree *) NULL);
					newroot->u.internal_key[0].first_page =
						FUNC3(split_target);
					FUNC21(base, newroot->u.internal_key[0].child,
								 split_target);
					FUNC21(base, split_target->hdr.parent, newroot);
					newroot->u.internal_key[1].first_page =
						FUNC3(newsibling);
					FUNC21(base, newroot->u.internal_key[1].child,
								 newsibling);
					FUNC21(base, newsibling->hdr.parent, newroot);
					FUNC21(base, fpm->btree_root, newroot);
					fpm->btree_depth++;

					break;
				}

				/* If the parent page isn't full, insert the downlink. */
				key = newsibling->u.internal_key[0].first_page;
				if (parent->hdr.nused < FPM_ITEMS_PER_INTERNAL_PAGE)
				{
					Size		index;

					index = FUNC10(parent, key);
					FUNC5(base, parent, index,
												key, newsibling);
					FUNC21(base, newsibling->hdr.parent, parent);
					if (index == 0)
						FUNC1(fpm, parent);
					break;
				}

				/* The parent also needs to be split, so loop around. */
				child = newsibling;
				split_target = parent;
			}

			/*
			 * The loop above did the insert, so just need to update the free
			 * list, and we're done.
			 */
			FUNC15(fpm, first_page, npages);

			return npages;
		}
	}

	/* Physically add the key to the page. */
	FUNC0(result.page->hdr.nused < FPM_ITEMS_PER_LEAF_PAGE);
	FUNC6(result.page, result.index, first_page, npages);

	/* If new first key on page, ancestors might need adjustment. */
	if (result.index == 0)
		FUNC1(fpm, result.page);

	/* Put it on the free list. */
	FUNC15(fpm, first_page, npages);

	return npages;
}