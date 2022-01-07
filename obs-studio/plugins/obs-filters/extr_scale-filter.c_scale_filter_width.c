
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scale_filter_data {int cx_out; } ;



__attribute__((used)) static uint32_t scale_filter_width(void *data)
{
 struct scale_filter_data *filter = data;
 return (uint32_t)filter->cx_out;
}
