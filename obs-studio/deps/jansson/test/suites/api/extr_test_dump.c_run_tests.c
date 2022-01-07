
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int circular_references () ;
 int dump_file () ;
 int encode_nul_byte () ;
 int encode_null () ;
 int encode_other_than_array_or_object () ;
 int encode_twice () ;
 int escape_slashes () ;

__attribute__((used)) static void run_tests()
{
    encode_null();
    encode_twice();
    circular_references();
    encode_other_than_array_or_object();
    escape_slashes();
    encode_nul_byte();
    dump_file();
}
