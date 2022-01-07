
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Type; } ;
typedef TYPE_1__ MEMORY_BASIC_INFORMATION ;






__attribute__((used)) static char *get_map_type(MEMORY_BASIC_INFORMATION *mbi) {
 char *type;
 switch (mbi->Type) {
 case 130:
  type = "IMAGE";
  break;
 case 129:
  type = "MAPPED";
  break;
 case 128:
  type = "PRIVATE";
  break;
 default:
  type = "UNKNOWN";
 }
 return type;
}
