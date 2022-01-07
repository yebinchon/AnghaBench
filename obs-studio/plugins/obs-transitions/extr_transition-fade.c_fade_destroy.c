
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fade_info {int dummy; } ;


 int bfree (struct fade_info*) ;

__attribute__((used)) static void fade_destroy(void *data)
{
 struct fade_info *fade = data;
 bfree(fade);
}
