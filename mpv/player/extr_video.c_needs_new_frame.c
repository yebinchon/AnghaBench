
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ num_next_frames; } ;


 scalar_t__ get_req_frames (struct MPContext*,int) ;

__attribute__((used)) static bool needs_new_frame(struct MPContext *mpctx)
{
    return mpctx->num_next_frames < get_req_frames(mpctx, 0);
}
