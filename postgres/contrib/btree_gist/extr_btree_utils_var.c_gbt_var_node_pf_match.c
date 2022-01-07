
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ trnc; } ;
typedef TYPE_1__ gbtree_vinfo ;
typedef int bytea ;
struct TYPE_7__ {int upper; int lower; } ;
typedef TYPE_2__ GBT_VARKEY_R ;


 scalar_t__ gbt_bytea_pf_match (int ,int const*,TYPE_1__ const*) ;

__attribute__((used)) static bool
gbt_var_node_pf_match(const GBT_VARKEY_R *node, const bytea *query, const gbtree_vinfo *tinfo)
{
 return (tinfo->trnc && (
       gbt_bytea_pf_match(node->lower, query, tinfo) ||
       gbt_bytea_pf_match(node->upper, query, tinfo)
       ));
}
