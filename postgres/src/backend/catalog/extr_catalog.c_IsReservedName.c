
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool
IsReservedName(const char *name)
{

 return (name[0] == 'p' &&
   name[1] == 'g' &&
   name[2] == '_');
}
