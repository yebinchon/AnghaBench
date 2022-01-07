
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int keysize; int entrysize; scalar_t__ collisions; scalar_t__ accesses; int sshift; int ssize; int max_dsize; int ffactor; scalar_t__ num_partitions; scalar_t__ nsegs; int dsize; } ;
struct TYPE_5__ {TYPE_2__* hctl; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ HASHHDR ;


 int DEF_DIRSIZE ;
 int DEF_FFACTOR ;
 int DEF_SEGSIZE ;
 int DEF_SEGSIZE_SHIFT ;
 int MemSet (TYPE_2__*,int ,int) ;
 int NO_MAX_DSIZE ;

__attribute__((used)) static void
hdefault(HTAB *hashp)
{
 HASHHDR *hctl = hashp->hctl;

 MemSet(hctl, 0, sizeof(HASHHDR));

 hctl->dsize = DEF_DIRSIZE;
 hctl->nsegs = 0;


 hctl->keysize = sizeof(char *);
 hctl->entrysize = 2 * sizeof(char *);

 hctl->num_partitions = 0;

 hctl->ffactor = DEF_FFACTOR;


 hctl->max_dsize = NO_MAX_DSIZE;

 hctl->ssize = DEF_SEGSIZE;
 hctl->sshift = DEF_SEGSIZE_SHIFT;




}
