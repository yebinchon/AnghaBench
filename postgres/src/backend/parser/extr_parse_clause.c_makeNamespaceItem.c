
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_rel_visible; int p_cols_visible; int p_lateral_only; int p_lateral_ok; int * p_rte; } ;
typedef int RangeTblEntry ;
typedef TYPE_1__ ParseNamespaceItem ;


 scalar_t__ palloc (int) ;

__attribute__((used)) static ParseNamespaceItem *
makeNamespaceItem(RangeTblEntry *rte, bool rel_visible, bool cols_visible,
      bool lateral_only, bool lateral_ok)
{
 ParseNamespaceItem *nsitem;

 nsitem = (ParseNamespaceItem *) palloc(sizeof(ParseNamespaceItem));
 nsitem->p_rte = rte;
 nsitem->p_rel_visible = rel_visible;
 nsitem->p_cols_visible = cols_visible;
 nsitem->p_lateral_only = lateral_only;
 nsitem->p_lateral_ok = lateral_ok;
 return nsitem;
}
