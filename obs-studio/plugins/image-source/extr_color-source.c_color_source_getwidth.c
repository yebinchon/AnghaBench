
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct color_source {int width; } ;



__attribute__((used)) static uint32_t color_source_getwidth(void *data)
{
 struct color_source *context = data;
 return context->width;
}
