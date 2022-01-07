
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ str_val; } ;
struct TYPE_8__ {int n; TYPE_1__* properties; } ;
struct TYPE_7__ {scalar_t__ oper; scalar_t__ name_idx; scalar_t__ type; int optional; TYPE_5__ v; } ;
typedef scalar_t__ PROPERTY_OPER ;
typedef TYPE_1__ PROPERTY_DEFINITION ;
typedef TYPE_2__ OSSL_PROPERTY_LIST ;


 scalar_t__ PROPERTY_OPER_EQ ;
 scalar_t__ PROPERTY_OPER_NE ;
 scalar_t__ PROPERTY_OVERRIDE ;
 scalar_t__ PROPERTY_TYPE_STRING ;
 scalar_t__ PROPERTY_TYPE_VALUE_UNDEFINED ;
 scalar_t__ memcmp (TYPE_5__*,TYPE_5__*,int) ;
 scalar_t__ ossl_property_false ;

int ossl_property_match_count(const OSSL_PROPERTY_LIST *query,
                              const OSSL_PROPERTY_LIST *defn)
{
    const PROPERTY_DEFINITION *const q = query->properties;
    const PROPERTY_DEFINITION *const d = defn->properties;
    int i = 0, j = 0, matches = 0;
    PROPERTY_OPER oper;

    while (i < query->n) {
        if ((oper = q[i].oper) == PROPERTY_OVERRIDE) {
            i++;
            continue;
        }
        if (j < defn->n) {
            if (q[i].name_idx > d[j].name_idx) {
                j++;
                continue;
            }
            if (q[i].name_idx == d[j].name_idx) {
                const int eq = q[i].type == d[j].type
                               && memcmp(&q[i].v, &d[j].v, sizeof(q[i].v)) == 0;

                if ((eq && oper == PROPERTY_OPER_EQ)
                    || (!eq && oper == PROPERTY_OPER_NE))
                    matches++;
                else if (!q[i].optional)
                    return -1;
                i++;
                j++;
                continue;
            }
        }






        if (q[i].type == PROPERTY_TYPE_VALUE_UNDEFINED) {
            if (oper == PROPERTY_OPER_NE)
                matches++;
            else if (!q[i].optional)
                return -1;
        } else if (q[i].type != PROPERTY_TYPE_STRING
                   || (oper == PROPERTY_OPER_EQ
                       && q[i].v.str_val != ossl_property_false)
                   || (oper == PROPERTY_OPER_NE
                       && q[i].v.str_val == ossl_property_false)) {
            if (!q[i].optional)
                return -1;
        } else {
            matches++;
        }
        i++;
    }
    return matches;
}
