
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int isnull; int attr; int len; int entries; int dontcare; } ;
struct TYPE_6__ {int spl_nright; int spl_right; int spl_nleft; int spl_left; } ;
struct TYPE_7__ {int spl_risnull; int spl_rattr; TYPE_1__ splitVector; int spl_lisnull; int spl_lattr; int spl_dontcare; } ;
typedef int IndexTuple ;
typedef TYPE_2__ GistSplitVector ;
typedef TYPE_3__ GistSplitUnion ;
typedef int GISTSTATE ;


 int gistunionsubkeyvec (int *,int *,TYPE_3__*) ;

__attribute__((used)) static void
gistunionsubkey(GISTSTATE *giststate, IndexTuple *itvec, GistSplitVector *spl)
{
 GistSplitUnion gsvp;

 gsvp.dontcare = spl->spl_dontcare;

 gsvp.entries = spl->splitVector.spl_left;
 gsvp.len = spl->splitVector.spl_nleft;
 gsvp.attr = spl->spl_lattr;
 gsvp.isnull = spl->spl_lisnull;

 gistunionsubkeyvec(giststate, itvec, &gsvp);

 gsvp.entries = spl->splitVector.spl_right;
 gsvp.len = spl->splitVector.spl_nright;
 gsvp.attr = spl->spl_rattr;
 gsvp.isnull = spl->spl_risnull;

 gistunionsubkeyvec(giststate, itvec, &gsvp);
}
