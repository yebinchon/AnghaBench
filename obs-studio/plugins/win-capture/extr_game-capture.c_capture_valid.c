
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {int target_process; int window; int dwm_capture; } ;


 int IsWindow (int ) ;
 int object_signalled (int ) ;

__attribute__((used)) static inline bool capture_valid(struct game_capture *gc)
{
 if (!gc->dwm_capture && !IsWindow(gc->window))
  return 0;

 return !object_signalled(gc->target_process);
}
