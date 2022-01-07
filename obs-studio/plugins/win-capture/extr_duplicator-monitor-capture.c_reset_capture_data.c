
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_monitor_info {int rotation_degrees; int y; int x; int member_0; } ;
struct duplicator_capture {int rot; int y; int x; int height; int width; int monitor; int duplicator; } ;
typedef int gs_texture_t ;


 int * gs_duplicator_get_texture (int ) ;
 int gs_get_duplicator_monitor_info (int ,struct gs_monitor_info*) ;
 int gs_texture_get_height (int *) ;
 int gs_texture_get_width (int *) ;

__attribute__((used)) static void reset_capture_data(struct duplicator_capture *capture)
{
 struct gs_monitor_info monitor_info = {0};
 gs_texture_t *texture = gs_duplicator_get_texture(capture->duplicator);

 gs_get_duplicator_monitor_info(capture->monitor, &monitor_info);
 capture->width = gs_texture_get_width(texture);
 capture->height = gs_texture_get_height(texture);
 capture->x = monitor_info.x;
 capture->y = monitor_info.y;
 capture->rot = monitor_info.rotation_degrees;
}
