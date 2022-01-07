
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct duplicator_capture {int rot; int width; int height; } ;



__attribute__((used)) static uint32_t duplicator_capture_height(void *data)
{
 struct duplicator_capture *capture = data;
 return capture->rot % 180 == 0 ? capture->height : capture->width;
}
