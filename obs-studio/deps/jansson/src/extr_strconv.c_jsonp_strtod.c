
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* length; int value; } ;
typedef TYPE_1__ strbuffer_t ;


 scalar_t__ ERANGE ;
 double HUGE_VAL ;
 int assert (int) ;
 scalar_t__ errno ;
 double strtod (int ,char**) ;
 int to_locale (TYPE_1__*) ;

int jsonp_strtod(strbuffer_t *strbuffer, double *out)
{
    double value;
    char *end;





    errno = 0;
    value = strtod(strbuffer->value, &end);
    assert(end == strbuffer->value + strbuffer->length);

    if((value == HUGE_VAL || value == -HUGE_VAL) && errno == ERANGE) {

        return -1;
    }

    *out = value;
    return 0;
}
