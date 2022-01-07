
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_PARSE_FILE_INPUT ;
 int MP_PARSE_SINGLE_INPUT ;
 int do_str (char*,int ) ;
 int mp_deinit () ;
 int mp_init () ;

int main(int argc, char **argv) {
    mp_init();
    do_str("print('hello world!', list(x+1 for x in range(10)), end='eol\\n')", MP_PARSE_SINGLE_INPUT);
    do_str("for i in range(10):\n  print(i)", MP_PARSE_FILE_INPUT);
    mp_deinit();
    return 0;
}
