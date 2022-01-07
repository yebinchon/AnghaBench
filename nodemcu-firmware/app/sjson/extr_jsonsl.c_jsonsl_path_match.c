
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct jsonsl_state_st {scalar_t__ type; int level; int nelem; } ;
typedef struct jsonsl_jpr_component_st {size_t len; int idx; int pstr; } const jsonsl_jpr_component_st ;
typedef TYPE_1__* jsonsl_jpr_t ;
typedef int jsonsl_jpr_match_t ;
struct TYPE_4__ {struct jsonsl_jpr_component_st const* components; } ;


 int JSONSL_MATCH_NOMATCH ;
 scalar_t__ JSONSL_T_OBJECT ;
 int jsonsl__match_continue (TYPE_1__*,struct jsonsl_jpr_component_st const*,int,scalar_t__) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

jsonsl_jpr_match_t
jsonsl_path_match(jsonsl_jpr_t jpr,
                  const struct jsonsl_state_st *parent,
                  const struct jsonsl_state_st *child,
                  const char *key, size_t nkey)
{
    const struct jsonsl_jpr_component_st *comp;
    if (!parent) {

        return jsonsl__match_continue(jpr, jpr->components, 0, child->type);
    }

    comp = jpr->components + parent->level;





    if (parent->type == JSONSL_T_OBJECT) {
        if (comp->len != nkey || strncmp(key, comp->pstr, nkey) != 0) {
            return JSONSL_MATCH_NOMATCH;
        }
    } else {
        if (comp->idx != parent->nelem - 1) {
            return JSONSL_MATCH_NOMATCH;
        }
    }
    return jsonsl__match_continue(jpr, comp, parent->level, child->type);
}
