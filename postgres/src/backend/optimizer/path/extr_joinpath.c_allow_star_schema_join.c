
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relids ;
typedef int PlannerInfo ;


 scalar_t__ bms_nonempty_difference (int ,int ) ;
 scalar_t__ bms_overlap (int ,int ) ;

__attribute__((used)) static inline bool
allow_star_schema_join(PlannerInfo *root,
        Relids outerrelids,
        Relids inner_paramrels)
{




 return (bms_overlap(inner_paramrels, outerrelids) &&
   bms_nonempty_difference(inner_paramrels, outerrelids));
}
