
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* setting; int name; } ;
typedef TYPE_1__ ConfigData ;


 int printf (char*,char*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static void
show_item(const char *configname,
    ConfigData *configdata,
    size_t configdata_len)
{
 int i;

 for (i = 0; i < configdata_len; i++)
 {
  if (strcmp(configname, configdata[i].name) == 0)
   printf("%s\n", configdata[i].setting);
 }
}
