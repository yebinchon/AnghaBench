
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {float cursor_check_time; scalar_t__ process_id; int cursor_hidden; } ;
typedef scalar_t__ DWORD ;


 int GetForegroundWindow () ;
 int GetWindowThreadProcessId (int ,scalar_t__*) ;

__attribute__((used)) static void check_foreground_window(struct game_capture *gc, float seconds)
{

 gc->cursor_check_time += seconds;
 if (gc->cursor_check_time >= 0.1f) {
  DWORD foreground_process_id;
  GetWindowThreadProcessId(GetForegroundWindow(),
      &foreground_process_id);
  if (gc->process_id != foreground_process_id)
   gc->cursor_hidden = 1;
  else
   gc->cursor_hidden = 0;
  gc->cursor_check_time = 0.0f;
 }
}
