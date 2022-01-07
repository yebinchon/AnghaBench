
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Relids ;


 int Assert (int) ;
 int * bms_copy (int *) ;
 int * bms_del_members (int *,int *) ;
 int bms_free (int *) ;
 scalar_t__ bms_is_empty (int *) ;
 int bms_overlap (int *,int *) ;
 int * bms_union (int *,int *) ;

Relids
calc_nestloop_required_outer(Relids outerrelids,
        Relids outer_paramrels,
        Relids innerrelids,
        Relids inner_paramrels)
{
 Relids required_outer;


 Assert(!bms_overlap(outer_paramrels, innerrelids));

 if (!inner_paramrels)
  return bms_copy(outer_paramrels);

 required_outer = bms_union(outer_paramrels, inner_paramrels);

 required_outer = bms_del_members(required_outer,
          outerrelids);

 if (bms_is_empty(required_outer))
 {
  bms_free(required_outer);
  required_outer = ((void*)0);
 }
 return required_outer;
}
