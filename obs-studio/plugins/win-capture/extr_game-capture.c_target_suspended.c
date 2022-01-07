
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {int thread_id; int process_id; } ;


 int thread_is_suspended (int ,int ) ;

__attribute__((used)) static bool target_suspended(struct game_capture *gc)
{
 return thread_is_suspended(gc->process_id, gc->thread_id);
}
