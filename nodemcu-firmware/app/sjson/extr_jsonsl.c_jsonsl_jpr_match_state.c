
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jsonsl_state_st {int level; scalar_t__ type; scalar_t__ nelem; } ;
typedef TYPE_1__* jsonsl_t ;
typedef int * jsonsl_jpr_t ;
typedef scalar_t__ jsonsl_jpr_match_t ;
struct TYPE_3__ {size_t* jpr_root; int jpr_count; int ** jprs; struct jsonsl_state_st* stack; } ;


 scalar_t__ JSONSL_MATCH_COMPLETE ;
 scalar_t__ JSONSL_MATCH_NOMATCH ;
 scalar_t__ JSONSL_MATCH_POSSIBLE ;
 scalar_t__ JSONSL_T_LIST ;
 scalar_t__ jsonsl_jpr_match (int *,scalar_t__,int,char const*,size_t) ;
 int memset (size_t*,int ,int) ;

jsonsl_jpr_t jsonsl_jpr_match_state(jsonsl_t jsn,
                                    struct jsonsl_state_st *state,
                                    const char *key,
                                    size_t nkey,
                                    jsonsl_jpr_match_t *out)
{
    struct jsonsl_state_st *parent_state;
    jsonsl_jpr_t ret = ((void*)0);


    size_t *jmptable, *pjmptable;
    size_t jmp_cur, ii, ourjmpidx;

    if (!jsn->jpr_root) {
        *out = JSONSL_MATCH_NOMATCH;
        return ((void*)0);
    }

    pjmptable = jsn->jpr_root + (jsn->jpr_count * (state->level-1));
    jmptable = pjmptable + jsn->jpr_count;


    if (*pjmptable == 0) {
        *jmptable = 0;
        *out = JSONSL_MATCH_NOMATCH;
        return ((void*)0);
    }

    parent_state = jsn->stack + state->level - 1;

    if (parent_state->type == JSONSL_T_LIST) {
        nkey = (size_t) parent_state->nelem;
    }

    *jmptable = 0;
    ourjmpidx = 0;
    memset(jmptable, 0, sizeof(int) * jsn->jpr_count);

    for (ii = 0; ii < jsn->jpr_count; ii++) {
        jmp_cur = pjmptable[ii];
        if (jmp_cur) {
            jsonsl_jpr_t jpr = jsn->jprs[jmp_cur-1];
            *out = jsonsl_jpr_match(jpr,
                                    parent_state->type,
                                    parent_state->level,
                                    key, nkey);
            if (*out == JSONSL_MATCH_COMPLETE) {
                ret = jpr;
                *jmptable = 0;
                return ret;
            } else if (*out == JSONSL_MATCH_POSSIBLE) {
                jmptable[ourjmpidx] = ii+1;
                ourjmpidx++;
            }
        } else {
            break;
        }
    }
    if (!*jmptable) {
        *out = JSONSL_MATCH_NOMATCH;
    }
    return ((void*)0);
}
