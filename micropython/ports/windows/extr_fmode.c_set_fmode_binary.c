
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_BINARY ;
 int set_fmode_impl (int ) ;

void set_fmode_binary(void) {
    set_fmode_impl(O_BINARY);
}
