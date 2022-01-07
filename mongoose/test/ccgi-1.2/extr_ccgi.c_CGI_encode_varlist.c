
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int value; struct TYPE_5__* next; } ;
struct TYPE_4__ {int varname; TYPE_2__* value; struct TYPE_4__* next; } ;
typedef TYPE_1__ CGI_varlist ;
typedef TYPE_2__ CGI_val ;


 char* mymalloc (int) ;
 scalar_t__ urlcount (int ,char const*) ;
 char* urlencode (int ,char*,char const*) ;

char *
CGI_encode_varlist(CGI_varlist *vlist, const char *keep) {
    char *out, *p;
    CGI_varlist *v;
    CGI_val *value;
    int k = 0;



    for (v = vlist; v != 0; v = v->next) {
        for (value = v->value; value != 0; value = value->next) {
            k += 2 + urlcount(v->varname, keep) +
                urlcount(value->value, keep);
        }
    }
    if (k == 0) {
        return 0;
    }
    p = out = mymalloc(k);



    for (v = vlist; v != 0; v = v->next) {
        for (value = v->value; value != 0; value = value->next) {
            if (p != out) {
                *p++ = '&';
            }
            p = urlencode(v->varname, p, keep);
            *p++ = '=';
            p = urlencode(value->value, p, keep);
        }
    }
    *p = 0;
    return out;
}
