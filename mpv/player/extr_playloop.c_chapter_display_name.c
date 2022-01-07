
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int dummy; } ;


 char* chapter_name (struct MPContext*,int) ;
 int get_chapter_count (struct MPContext*) ;
 char* talloc_asprintf (int *,char*,int,...) ;
 char* talloc_strdup (int *,char*) ;

char *chapter_display_name(struct MPContext *mpctx, int chapter)
{
    char *name = chapter_name(mpctx, chapter);
    char *dname = ((void*)0);
    if (name) {
        dname = talloc_asprintf(((void*)0), "(%d) %s", chapter + 1, name);
    } else if (chapter < -1) {
        dname = talloc_strdup(((void*)0), "(unavailable)");
    } else {
        int chapter_count = get_chapter_count(mpctx);
        if (chapter_count <= 0)
            dname = talloc_asprintf(((void*)0), "(%d)", chapter + 1);
        else
            dname = talloc_asprintf(((void*)0), "(%d) of %d", chapter + 1,
                                    chapter_count);
    }
    return dname;
}
