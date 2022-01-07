
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prt_dsc_noarg (char*) ;
 int prt_file_error ;
 int prt_flush_buffer () ;
 int prt_write_string (char*) ;

int
mch_print_end_page()
{
    prt_flush_buffer();

    prt_write_string("re sp\n");

    prt_dsc_noarg("PageTrailer");

    return !prt_file_error;
}
