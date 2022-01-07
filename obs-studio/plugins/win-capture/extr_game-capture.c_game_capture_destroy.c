
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {int config; int executable; int class; int title; int cursor_data; scalar_t__ hotkey_pair; } ;


 int bfree (struct game_capture*) ;
 int cursor_data_free (int *) ;
 int dstr_free (int *) ;
 int free_config (int *) ;
 int obs_enter_graphics () ;
 int obs_hotkey_pair_unregister (scalar_t__) ;
 int obs_leave_graphics () ;
 int stop_capture (struct game_capture*) ;

__attribute__((used)) static void game_capture_destroy(void *data)
{
 struct game_capture *gc = data;
 stop_capture(gc);

 if (gc->hotkey_pair)
  obs_hotkey_pair_unregister(gc->hotkey_pair);

 obs_enter_graphics();
 cursor_data_free(&gc->cursor_data);
 obs_leave_graphics();

 dstr_free(&gc->title);
 dstr_free(&gc->class);
 dstr_free(&gc->executable);
 free_config(&gc->config);
 bfree(gc);
}
