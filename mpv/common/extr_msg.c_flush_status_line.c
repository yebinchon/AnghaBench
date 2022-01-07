
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log_root {scalar_t__ blank_lines; scalar_t__ status_lines; } ;


 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void flush_status_line(struct mp_log_root *root)
{

    if (root->status_lines)
        fprintf(stderr, "\n");
    root->status_lines = 0;
    root->blank_lines = 0;
}
