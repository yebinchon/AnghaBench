
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int set_msg_color (int *,int) ;
 int set_term_color (int *,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void pretty_print_module(FILE* stream, const char *prefix, bool use_color, int lev)
{

    if (use_color) {
        size_t prefix_len = strlen(prefix);
        unsigned int mod = 0;
        for (int i = 0; i < prefix_len; ++i)
            mod = mod * 33 + prefix[i];
        set_term_color(stream, (mod + 1) % 15 + 1);
    }

    fprintf(stream, "%10s", prefix);
    if (use_color)
        set_term_color(stream, -1);
    fprintf(stream, ": ");
    if (use_color)
        set_msg_color(stream, lev);
}
