
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_FLAG_SOURCE_IS_FILENAME ;
 int MP_PARSE_FILE_INPUT ;
 int parse_compile_execute (char const*,int ,int ) ;

int pyexec_file(const char *filename) {
    return parse_compile_execute(filename, MP_PARSE_FILE_INPUT, EXEC_FLAG_SOURCE_IS_FILENAME);
}
