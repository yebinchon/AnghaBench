
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* parent; } ;
struct TYPE_6__ {int relids; } ;
typedef int Relids ;
typedef TYPE_2__ Path ;


 int Assert (int) ;
 int PATH_REQ_OUTER (TYPE_2__*) ;
 int bms_overlap (int ,int ) ;
 int bms_union (int ,int ) ;

Relids
calc_non_nestloop_required_outer(Path *outer_path, Path *inner_path)
{
 Relids outer_paramrels = PATH_REQ_OUTER(outer_path);
 Relids inner_paramrels = PATH_REQ_OUTER(inner_path);
 Relids required_outer;


 Assert(!bms_overlap(outer_paramrels, inner_path->parent->relids));
 Assert(!bms_overlap(inner_paramrels, outer_path->parent->relids));

 required_outer = bms_union(outer_paramrels, inner_paramrels);

 return required_outer;
}
