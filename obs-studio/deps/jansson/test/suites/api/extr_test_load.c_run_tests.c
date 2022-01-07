
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allow_nul () ;
 int decode_any () ;
 int decode_int_as_real () ;
 int disable_eof_check () ;
 int file_not_found () ;
 int load_wrong_args () ;
 int position () ;
 int reject_duplicates () ;
 int very_long_file_name () ;

__attribute__((used)) static void run_tests()
{
    file_not_found();
    very_long_file_name();
    reject_duplicates();
    disable_eof_check();
    decode_any();
    decode_int_as_real();
    allow_nul();
    load_wrong_args();
    position();
}
