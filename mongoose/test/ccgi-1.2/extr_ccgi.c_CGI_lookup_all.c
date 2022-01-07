
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* value; struct TYPE_7__* next; } ;
struct TYPE_6__ {scalar_t__ vector; int numvalue; TYPE_2__* value; } ;
typedef TYPE_1__ CGI_varlist ;
typedef int CGI_value ;
typedef TYPE_2__ CGI_val ;


 TYPE_1__* findvar (TYPE_1__*,char const*) ;
 scalar_t__ mymalloc (int) ;

CGI_value *
CGI_lookup_all(CGI_varlist *v, const char *varname) {
    CGI_val *val;
    int i;

    if ((v = findvar(v, varname)) == 0) {
        return 0;
    }
    if (v->vector == 0) {
        v->vector = (CGI_value *)
            mymalloc(sizeof(CGI_value) * (v->numvalue + 1));
        i = 0;



        for (val = v->value; val != 0 && i < v->numvalue;
            val = val->next)
        {
            ((const char **)v->vector)[i++] = val->value;
        }
        ((const char **)v->vector)[i] = 0;
    }
    return v->vector;
}
