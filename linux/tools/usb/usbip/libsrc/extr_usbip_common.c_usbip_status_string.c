
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {char const* desc; scalar_t__ num; } ;


 TYPE_1__* portst_strings ;

const char *usbip_status_string(int32_t status)
{
 for (int i = 0; portst_strings[i].desc != ((void*)0); i++)
  if (portst_strings[i].num == status)
   return portst_strings[i].desc;

 return "Unknown Status";
}
