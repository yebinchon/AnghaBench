
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_PARSE_FILE_INPUT ;
 int do_str (char const*,int ) ;

int mp_js_do_str(const char *code) {
    return do_str(code, MP_PARSE_FILE_INPUT);
}
