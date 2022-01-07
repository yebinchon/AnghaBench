
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fade_to_color_info {int dummy; } ;


 int bfree (struct fade_to_color_info*) ;

__attribute__((used)) static void fade_to_color_destroy(void *data)
{
 struct fade_to_color_info *fade_to_color = data;
 bfree(fade_to_color);
}
