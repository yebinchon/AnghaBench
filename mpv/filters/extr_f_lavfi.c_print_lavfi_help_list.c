
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int dump_list (struct mp_log*,int) ;
 int mp_info (struct mp_log*,char*) ;

void print_lavfi_help_list(struct mp_log *log, int media_type)
{
    dump_list(log, media_type);
    mp_info(log, "\nIf libavfilter filters clash with builtin mpv filters,\n"
            "prefix them with lavfi- to select the libavfilter one.\n\n");
}
