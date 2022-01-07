
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int write_name ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ write_filename_in_watch_later_config; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void write_filename(struct MPContext *mpctx, FILE *file, char *filename)
{
    if (mpctx->opts->write_filename_in_watch_later_config) {
        char write_name[1024] = {0};
        for (int n = 0; filename[n] && n < sizeof(write_name) - 1; n++)
            write_name[n] = (unsigned char)filename[n] < 32 ? '_' : filename[n];
        fprintf(file, "# %s\n", write_name);
    }
}
