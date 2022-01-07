
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_capture {struct window_capture* executable; struct window_capture* class; struct window_capture* title; int capture; } ;


 int bfree (struct window_capture*) ;
 int dc_capture_free (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void wc_destroy(void *data)
{
 struct window_capture *wc = data;

 if (wc) {
  obs_enter_graphics();
  dc_capture_free(&wc->capture);
  obs_leave_graphics();

  bfree(wc->title);
  bfree(wc->class);
  bfree(wc->executable);

  bfree(wc);
 }
}
