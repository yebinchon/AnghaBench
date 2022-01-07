
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tsm_vte {int dummy; } ;
struct tsm_screen {int dummy; } ;


 int HEIGHT ;
 int WIDTH ;
 int term_draw_cell ;
 int terminal_write_fn ;
 int tsm_screen_draw (struct tsm_screen*,int ,int *) ;
 int tsm_screen_new (struct tsm_screen**,int *,int *) ;
 int tsm_screen_resize (struct tsm_screen*,int ,int ) ;
 int tsm_screen_set_max_sb (struct tsm_screen*,int const) ;
 int tsm_screen_unref (struct tsm_screen*) ;
 int tsm_vte_input (struct tsm_vte*,char const*,size_t) ;
 int tsm_vte_new (struct tsm_vte**,struct tsm_screen*,int ,int *,int *,int *) ;
 int tsm_vte_unref (struct tsm_vte*) ;

int LLVMFuzzerTestOneInput(const uint8_t* data, size_t size) {
  struct tsm_screen *screen;
  struct tsm_vte *vte;
  const int scrollback_size = 200;

  tsm_screen_new(&screen, ((void*)0), ((void*)0));
  tsm_screen_set_max_sb(screen, scrollback_size);
  tsm_vte_new(&vte, screen, terminal_write_fn, ((void*)0), ((void*)0), ((void*)0));
  tsm_screen_resize(screen, WIDTH, HEIGHT);

  tsm_vte_input(vte, (const char*) data, size);
  tsm_screen_draw(screen, term_draw_cell, ((void*)0));

  tsm_vte_unref(vte);
  tsm_screen_unref(screen);
  return 0;
}
