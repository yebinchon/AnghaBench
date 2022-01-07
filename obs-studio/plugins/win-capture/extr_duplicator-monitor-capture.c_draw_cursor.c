
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct duplicator_capture {int rot; int width; int height; int y; int x; int cursor_data; } ;


 int cursor_draw (int *,int ,int ,float,float,int ,int ) ;

__attribute__((used)) static void draw_cursor(struct duplicator_capture *capture)
{
 cursor_draw(&capture->cursor_data, -capture->x, -capture->y, 1.0f, 1.0f,
      capture->rot % 180 == 0 ? capture->width : capture->height,
      capture->rot % 180 == 0 ? capture->height : capture->width);
}
