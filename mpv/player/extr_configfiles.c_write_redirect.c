
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int dummy; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*) ;
 char* mp_get_playback_resume_config_filename (struct MPContext*,char*) ;
 int talloc_free (char*) ;
 int write_filename (struct MPContext*,int *,char*) ;

__attribute__((used)) static void write_redirect(struct MPContext *mpctx, char *path)
{
    char *conffile = mp_get_playback_resume_config_filename(mpctx, path);
    if (conffile) {
        FILE *file = fopen(conffile, "wb");
        if (file) {
            fprintf(file, "# redirect entry\n");
            write_filename(mpctx, file, path);
            fclose(file);
        }
        talloc_free(conffile);
    }
}
