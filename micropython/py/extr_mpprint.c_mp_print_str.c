
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int (* print_strn ) (int ,char const*,size_t) ;} ;
typedef TYPE_1__ mp_print_t ;


 size_t strlen (char const*) ;
 int stub1 (int ,char const*,size_t) ;

int mp_print_str(const mp_print_t *print, const char *str) {
    size_t len = strlen(str);
    if (len) {
        print->print_strn(print->data, str, len);
    }
    return len;
}
