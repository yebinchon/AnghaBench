
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float x; float y; } ;
struct scroll_filter_data {TYPE_1__ offset; } ;



__attribute__((used)) static void scroll_filter_show(void *data)
{
 struct scroll_filter_data *filter = data;
 filter->offset.x = 0.0f;
 filter->offset.y = 0.0f;
}
