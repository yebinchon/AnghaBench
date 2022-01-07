
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct duplicator_capture {int showing; float reset_timeout; scalar_t__ width; scalar_t__ duplicator; int cursor_data; scalar_t__ capture_cursor; int monitor; int source; } ;


 float RESET_INTERVAL_SEC ;
 int UNUSED_PARAMETER (float) ;
 int cursor_capture (int *) ;
 int free_capture_data (struct duplicator_capture*) ;
 scalar_t__ gs_duplicator_create (int ) ;
 int gs_duplicator_update_frame (scalar_t__) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int obs_source_showing (int ) ;
 int reset_capture_data (struct duplicator_capture*) ;

__attribute__((used)) static void duplicator_capture_tick(void *data, float seconds)
{
 struct duplicator_capture *capture = data;



 if (!obs_source_showing(capture->source)) {
  if (capture->showing) {
   obs_enter_graphics();
   free_capture_data(capture);
   obs_leave_graphics();

   capture->showing = 0;
  }
  return;



 } else if (!capture->showing) {
  capture->reset_timeout = RESET_INTERVAL_SEC;
 }

 obs_enter_graphics();

 if (!capture->duplicator) {
  capture->reset_timeout += seconds;

  if (capture->reset_timeout >= RESET_INTERVAL_SEC) {
   capture->duplicator =
    gs_duplicator_create(capture->monitor);

   capture->reset_timeout = 0.0f;
  }
 }

 if (!!capture->duplicator) {
  if (capture->capture_cursor)
   cursor_capture(&capture->cursor_data);

  if (!gs_duplicator_update_frame(capture->duplicator)) {
   free_capture_data(capture);

  } else if (capture->width == 0) {
   reset_capture_data(capture);
  }
 }

 obs_leave_graphics();

 if (!capture->showing)
  capture->showing = 1;

 UNUSED_PARAMETER(seconds);
}
