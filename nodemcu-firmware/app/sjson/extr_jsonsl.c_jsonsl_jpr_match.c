
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jsonsl_jpr_component_st {scalar_t__ ptype; size_t idx; size_t len; int pstr; scalar_t__ is_arridx; } ;
typedef TYPE_1__* jsonsl_jpr_t ;
typedef int jsonsl_jpr_match_t ;
struct TYPE_3__ {unsigned int ncomponents; struct jsonsl_jpr_component_st* components; } ;


 int JSONSL_MATCH_COMPLETE ;
 int JSONSL_MATCH_NOMATCH ;
 int JSONSL_MATCH_POSSIBLE ;
 int JSONSL_MATCH_TYPE_MISMATCH ;
 scalar_t__ JSONSL_PATH_NUMERIC ;
 scalar_t__ JSONSL_PATH_WILDCARD ;
 unsigned int JSONSL_T_LIST ;
 int strncmp (int ,char const*,size_t) ;

jsonsl_jpr_match_t
jsonsl_jpr_match(jsonsl_jpr_t jpr,
                   unsigned int parent_type,
                   unsigned int parent_level,
                   const char *key,
                   size_t nkey)
{

    int cmpret;
    struct jsonsl_jpr_component_st *p_component;
    p_component = jpr->components + parent_level;

    if (parent_level >= jpr->ncomponents) {
        return JSONSL_MATCH_NOMATCH;
    }


    if (parent_level == 0) {
        if (jpr->ncomponents == 1) {
            return JSONSL_MATCH_COMPLETE;
        } else {
            return JSONSL_MATCH_POSSIBLE;
        }
    }


    if (p_component->ptype == JSONSL_PATH_WILDCARD) {
        if (parent_level == jpr->ncomponents-1) {
            return JSONSL_MATCH_COMPLETE;
        } else {
            return JSONSL_MATCH_POSSIBLE;
        }
    }



    if (p_component->ptype == JSONSL_PATH_NUMERIC) {
        if (parent_type == JSONSL_T_LIST) {
            if (p_component->idx != nkey) {

                return JSONSL_MATCH_NOMATCH;
            } else {
                if (parent_level == jpr->ncomponents-1) {

                    return JSONSL_MATCH_COMPLETE;
                } else {

                    return JSONSL_MATCH_POSSIBLE;
                }
            }
        } else if (p_component->is_arridx) {


            return JSONSL_MATCH_TYPE_MISMATCH;
        }
    } else if (parent_type == JSONSL_T_LIST) {
        return JSONSL_MATCH_TYPE_MISMATCH;
    }


    if (p_component->len != nkey) {
        return JSONSL_MATCH_NOMATCH;
    }


    cmpret = strncmp(p_component->pstr, key, nkey);
    if (cmpret == 0) {
        if (parent_level == jpr->ncomponents-1) {
            return JSONSL_MATCH_COMPLETE;
        } else {
            return JSONSL_MATCH_POSSIBLE;
        }
    }

    return JSONSL_MATCH_NOMATCH;
}
