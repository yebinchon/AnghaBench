
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int constraint_id; } ;
struct TYPE_5__ {int constr_queryno; int constr_id; } ;
typedef TYPE_1__ RI_QueryKey ;
typedef TYPE_2__ RI_ConstraintInfo ;



__attribute__((used)) static void
ri_BuildQueryKey(RI_QueryKey *key, const RI_ConstraintInfo *riinfo,
     int32 constr_queryno)
{




 key->constr_id = riinfo->constraint_id;
 key->constr_queryno = constr_queryno;
}
