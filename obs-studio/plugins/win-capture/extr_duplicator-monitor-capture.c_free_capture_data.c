
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct duplicator_capture {float reset_timeout; scalar_t__ rot; scalar_t__ y; scalar_t__ x; scalar_t__ height; scalar_t__ width; int * duplicator; int cursor_data; } ;


 int cursor_data_free (int *) ;
 int gs_duplicator_destroy (int *) ;

__attribute__((used)) static void free_capture_data(struct duplicator_capture *capture)
{
 gs_duplicator_destroy(capture->duplicator);
 cursor_data_free(&capture->cursor_data);
 capture->duplicator = ((void*)0);
 capture->width = 0;
 capture->height = 0;
 capture->x = 0;
 capture->y = 0;
 capture->rot = 0;
 capture->reset_timeout = 0.0f;
}
