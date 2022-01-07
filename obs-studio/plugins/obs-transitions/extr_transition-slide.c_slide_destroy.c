
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slide_info {int dummy; } ;


 int bfree (struct slide_info*) ;

void slide_destroy(void *data)
{
 struct slide_info *slide = data;
 bfree(slide);
}
