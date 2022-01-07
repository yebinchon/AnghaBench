
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_raise_msg (int *,char const*) ;
 int mp_type_OSError ;

void error_check(bool status, const char *msg) {
    if (!status) {
        mp_raise_msg(&mp_type_OSError, msg);
    }
}
