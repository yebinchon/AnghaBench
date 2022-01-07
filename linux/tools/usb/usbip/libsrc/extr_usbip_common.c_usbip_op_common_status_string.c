
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* desc; int num; } ;


 TYPE_1__* op_common_status_strings ;

const char *usbip_op_common_status_string(int status)
{
 for (int i = 0; op_common_status_strings[i].desc != ((void*)0); i++)
  if (op_common_status_strings[i].num == status)
   return op_common_status_strings[i].desc;

 return "Unknown Op Common Status";
}
