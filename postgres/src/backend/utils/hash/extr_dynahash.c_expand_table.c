
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_13__ {int max_bucket; long nsegs; long dsize; long low_mask; int high_mask; } ;
struct TYPE_12__ {struct TYPE_12__* link; int hashvalue; } ;
struct TYPE_11__ {long sshift; TYPE_2__*** dir; int ssize; TYPE_3__* hctl; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__** HASHSEGMENT ;
typedef TYPE_3__ HASHHDR ;
typedef TYPE_2__* HASHBUCKET ;


 int Assert (int) ;
 int IS_PARTITIONED (TYPE_3__*) ;
 long MOD (long,int ) ;
 scalar_t__ calc_bucket (TYPE_3__*,int ) ;
 int dir_realloc (TYPE_1__*) ;
 int hash_expansions ;
 TYPE_2__** seg_alloc (TYPE_1__*) ;

__attribute__((used)) static bool
expand_table(HTAB *hashp)
{
 HASHHDR *hctl = hashp->hctl;
 HASHSEGMENT old_seg,
    new_seg;
 long old_bucket,
    new_bucket;
 long new_segnum,
    new_segndx;
 long old_segnum,
    old_segndx;
 HASHBUCKET *oldlink,
      *newlink;
 HASHBUCKET currElement,
    nextElement;

 Assert(!IS_PARTITIONED(hctl));





 new_bucket = hctl->max_bucket + 1;
 new_segnum = new_bucket >> hashp->sshift;
 new_segndx = MOD(new_bucket, hashp->ssize);

 if (new_segnum >= hctl->nsegs)
 {

  if (new_segnum >= hctl->dsize)
   if (!dir_realloc(hashp))
    return 0;
  if (!(hashp->dir[new_segnum] = seg_alloc(hashp)))
   return 0;
  hctl->nsegs++;
 }


 hctl->max_bucket++;







 old_bucket = (new_bucket & hctl->low_mask);




 if ((uint32) new_bucket > hctl->high_mask)
 {
  hctl->low_mask = hctl->high_mask;
  hctl->high_mask = (uint32) new_bucket | hctl->low_mask;
 }







 old_segnum = old_bucket >> hashp->sshift;
 old_segndx = MOD(old_bucket, hashp->ssize);

 old_seg = hashp->dir[old_segnum];
 new_seg = hashp->dir[new_segnum];

 oldlink = &old_seg[old_segndx];
 newlink = &new_seg[new_segndx];

 for (currElement = *oldlink;
   currElement != ((void*)0);
   currElement = nextElement)
 {
  nextElement = currElement->link;
  if ((long) calc_bucket(hctl, currElement->hashvalue) == old_bucket)
  {
   *oldlink = currElement;
   oldlink = &currElement->link;
  }
  else
  {
   *newlink = currElement;
   newlink = &currElement->link;
  }
 }

 *oldlink = ((void*)0);
 *newlink = ((void*)0);

 return 1;
}
