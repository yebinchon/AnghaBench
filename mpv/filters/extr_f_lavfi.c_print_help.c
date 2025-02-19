
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int dump_list (struct mp_log*,int) ;
 int mp_info (struct mp_log*,char*,char*,char*,char*) ;

__attribute__((used)) static void print_help(struct mp_log *log, int mediatype, char *name, char *ex)
{
    dump_list(log, mediatype);
    mp_info(log, "\n"
        "This lists %s->%s filters only. Refer to\n"
        "\n"
        " https://ffmpeg.org/ffmpeg-filters.html\n"
        "\n"
        "to see how to use each filter and what arguments each filter takes.\n"
        "Also, be sure to quote the FFmpeg filter string properly, e.g.:\n"
        "\n"
        " \"%s\"\n"
        "\n"
        "Otherwise, mpv and libavfilter syntax will conflict.\n"
        "\n", name, name, ex);
}
