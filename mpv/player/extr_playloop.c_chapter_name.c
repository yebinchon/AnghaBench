
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int num_chapters; TYPE_1__* chapters; } ;
struct TYPE_2__ {int metadata; } ;


 char* mp_tags_get_str (int ,char*) ;

char *chapter_name(struct MPContext *mpctx, int chapter)
{
    if (chapter < 0 || chapter >= mpctx->num_chapters)
        return ((void*)0);
    return mp_tags_get_str(mpctx->chapters[chapter].metadata, "title");
}
