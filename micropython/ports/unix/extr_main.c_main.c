
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int main_ (int,char**) ;
 int mp_stack_ctrl_init () ;
 int mp_thread_init () ;

int main(int argc, char **argv) {
    mp_stack_ctrl_init();
    return main_(argc, argv);
}
