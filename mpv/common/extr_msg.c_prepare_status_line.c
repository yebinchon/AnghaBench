
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log_root {size_t status_lines; size_t blank_lines; } ;
typedef int FILE ;


 size_t MPMAX (size_t,size_t) ;
 size_t MPMIN (size_t,size_t) ;
 int fprintf (int *,char*) ;
 int * stderr ;
 char* strchr (char*,char) ;

__attribute__((used)) static void prepare_status_line(struct mp_log_root *root, char *new_status)
{
    FILE *f = stderr;

    size_t new_lines = 1;
    char *tmp = new_status;
    while (1) {
        tmp = strchr(tmp, '\n');
        if (!tmp)
            break;
        new_lines++;
        tmp++;
    }

    size_t old_lines = root->status_lines;
    if (!new_status[0] && old_lines == 0)
        return;

    size_t clear_lines = MPMIN(MPMAX(new_lines, old_lines), root->blank_lines);


    fprintf(f, "\r\033[K");

    for (size_t n = 1; n < clear_lines; n++)
        fprintf(f, "\033[A\r\033[K");

    for (size_t n = new_lines; n < clear_lines; n++)
        fprintf(f, "\n");

    root->status_lines = new_lines;
    root->blank_lines = MPMAX(root->blank_lines, new_lines);
}
