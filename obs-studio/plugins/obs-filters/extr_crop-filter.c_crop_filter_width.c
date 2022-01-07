
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct crop_filter_data {int width; } ;



__attribute__((used)) static uint32_t crop_filter_width(void *data)
{
 struct crop_filter_data *crop = data;
 return (uint32_t)crop->width;
}
