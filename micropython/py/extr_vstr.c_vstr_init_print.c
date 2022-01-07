
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vstr_t ;
struct TYPE_3__ {scalar_t__ print_strn; int * data; } ;
typedef TYPE_1__ mp_print_t ;
typedef scalar_t__ mp_print_strn_t ;


 scalar_t__ vstr_add_strn ;
 int vstr_init (int *,size_t) ;

void vstr_init_print(vstr_t *vstr, size_t alloc, mp_print_t *print) {
    vstr_init(vstr, alloc);
    print->data = vstr;
    print->print_strn = (mp_print_strn_t)vstr_add_strn;
}
