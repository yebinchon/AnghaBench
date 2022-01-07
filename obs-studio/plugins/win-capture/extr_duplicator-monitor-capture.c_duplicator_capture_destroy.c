
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct duplicator_capture {int cursor_data; int duplicator; } ;


 int bfree (struct duplicator_capture*) ;
 int cursor_data_free (int *) ;
 int gs_duplicator_destroy (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void duplicator_capture_destroy(void *data)
{
 struct duplicator_capture *capture = data;

 obs_enter_graphics();

 gs_duplicator_destroy(capture->duplicator);
 cursor_data_free(&capture->cursor_data);

 obs_leave_graphics();

 bfree(capture);
}
