
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void set_term_color(FILE *stream, int c)
{
    if (c == -1) {
        fprintf(stream, "\033[0m");
    } else {
        fprintf(stream, "\033[%d;3%dm", c >> 3, c & 7);
    }
}
