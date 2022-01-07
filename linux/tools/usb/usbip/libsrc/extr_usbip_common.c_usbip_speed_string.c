
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; char const* desc; int * speed; } ;


 TYPE_1__* speed_strings ;

const char *usbip_speed_string(int num)
{
 for (int i = 0; speed_strings[i].speed != ((void*)0); i++)
  if (speed_strings[i].num == num)
   return speed_strings[i].desc;

 return "Unknown Speed";
}
