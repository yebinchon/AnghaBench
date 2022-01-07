
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vstr_t ;
typedef int va_list ;
struct TYPE_3__ {int member_1; int * member_0; } ;
typedef TYPE_1__ mp_print_t ;
typedef int mp_print_strn_t ;


 int mp_vprintf (TYPE_1__*,char const*,int ) ;
 int vstr_add_strn ;

void vstr_vprintf(vstr_t *vstr, const char *fmt, va_list ap) {
    mp_print_t print = {vstr, (mp_print_strn_t)vstr_add_strn};
    mp_vprintf(&print, fmt, ap);
}
