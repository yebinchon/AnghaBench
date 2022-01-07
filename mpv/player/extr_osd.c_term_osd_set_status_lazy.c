
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {char* term_osd_status; } ;


 int strchr (char*,char) ;
 int strlen (char*) ;
 int talloc_free (char*) ;
 char* talloc_strdup (struct MPContext*,char const*) ;
 int terminal_get_size (int*,int*) ;

__attribute__((used)) static void term_osd_set_status_lazy(struct MPContext *mpctx, const char *text)
{
    talloc_free(mpctx->term_osd_status);
    mpctx->term_osd_status = talloc_strdup(mpctx, text);

    int w = 80, h = 24;
    terminal_get_size(&w, &h);
    if (strlen(mpctx->term_osd_status) > w && !strchr(mpctx->term_osd_status, '\n'))
        mpctx->term_osd_status[w] = '\0';
}
