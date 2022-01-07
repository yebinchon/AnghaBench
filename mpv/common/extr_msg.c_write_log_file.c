
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log_root {int log_file; } ;
struct mp_log {char* verbose_prefix; int terminal_level; struct mp_log_root* root; } ;


 int MPMAX (int ,int ) ;
 int MP_START_TIME ;
 int MSGL_DEBUG ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,int,char*,char*) ;
 int** mp_log_levels ;
 int mp_time_us () ;

__attribute__((used)) static void write_log_file(struct mp_log *log, int lev, char *text)
{
    struct mp_log_root *root = log->root;

    if (!root->log_file || lev > MPMAX(MSGL_DEBUG, log->terminal_level))
        return;

    fprintf(root->log_file, "[%8.3f][%c][%s] %s",
            (mp_time_us() - MP_START_TIME) / 1e6,
            mp_log_levels[lev][0],
            log->verbose_prefix, text);
    fflush(root->log_file);
}
