
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MP_PARSE_SINGLE_INPUT ;
 int do_str (char*,int ) ;
 int gc_init (int *,char*) ;
 int mp_deinit () ;
 int mp_init () ;
 int mp_stack_ctrl_init () ;
 int mp_stack_set_limit (int) ;

int main(int argc, char **argv) {
    mp_stack_ctrl_init();
    mp_stack_set_limit(10240);
    uint32_t heap[16*1024 / 4];
    gc_init(heap, (char*)heap + 16 * 1024);
    mp_init();
    do_str("print('hello world!')", MP_PARSE_SINGLE_INPUT);
    mp_deinit();
    return 0;
}
