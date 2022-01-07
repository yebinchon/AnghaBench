
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int num_chapters; } ;



int get_chapter_count(struct MPContext *mpctx)
{
    return mpctx->num_chapters;
}
