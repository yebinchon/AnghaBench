
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t qstr ;
typedef int mp_print_t ;
typedef int mp_obj_t ;


 size_t MP_QSTRnull ;
 int PRINT_EXC ;
 int assert (int) ;
 int mp_obj_exception_get_traceback (int ,size_t*,size_t**) ;
 scalar_t__ mp_obj_is_exception_instance (int ) ;
 int mp_obj_print_helper (int const*,int ,int ) ;
 int mp_print_str (int const*,char*) ;
 int mp_printf (int const*,char*,size_t,...) ;

void mp_obj_print_exception(const mp_print_t *print, mp_obj_t exc) {
    if (mp_obj_is_exception_instance(exc)) {
        size_t n, *values;
        mp_obj_exception_get_traceback(exc, &n, &values);
        if (n > 0) {
            assert(n % 3 == 0);
            mp_print_str(print, "Traceback (most recent call last):\n");
            for (int i = n - 3; i >= 0; i -= 3) {



                mp_printf(print, "  File \"%q\"", values[i]);


                qstr block = values[i + 2];
                if (block == MP_QSTRnull) {
                    mp_print_str(print, "\n");
                } else {
                    mp_printf(print, ", in %q\n", block);
                }
            }
        }
    }
    mp_obj_print_helper(print, exc, PRINT_EXC);
    mp_print_str(print, "\n");
}
