
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int last_chapter; } ;


 int MPV_EVENT_CHAPTER_CHANGE ;
 int get_current_chapter (struct MPContext*) ;
 int mp_notify (struct MPContext*,int ,int *) ;

__attribute__((used)) static void handle_chapter_change(struct MPContext *mpctx)
{
    int chapter = get_current_chapter(mpctx);
    if (chapter != mpctx->last_chapter) {
        mpctx->last_chapter = chapter;
        mp_notify(mpctx, MPV_EVENT_CHAPTER_CHANGE, ((void*)0));
    }
}
