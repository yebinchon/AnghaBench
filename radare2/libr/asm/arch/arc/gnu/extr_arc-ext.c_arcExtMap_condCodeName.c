
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const** condCodes; } ;


 int FIRST_EXTENSION_CONDITION_CODE ;
 int LAST_EXTENSION_CONDITION_CODE ;
 TYPE_1__ arc_extension_map ;

const char *
arcExtMap_condCodeName (int code)
{
 if (code < FIRST_EXTENSION_CONDITION_CODE || code > LAST_EXTENSION_CONDITION_CODE) {
  return ((void*)0);
 }
 return arc_extension_map.condCodes[code - FIRST_EXTENSION_CONDITION_CODE];
}
