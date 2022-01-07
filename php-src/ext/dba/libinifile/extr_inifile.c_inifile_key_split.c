
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* name; void* group; } ;
typedef TYPE_1__ key_type ;


 void* estrdup (char const*) ;
 void* estrndup (char const*,int) ;
 char* strchr (char const*,char) ;

key_type inifile_key_split(const char *group_name)
{
 key_type key;
 char *name;

 if (group_name[0] == '[' && (name = strchr(group_name, ']')) != ((void*)0)) {
  key.group = estrndup(group_name+1, name - (group_name + 1));
  key.name = estrdup(name+1);
 } else {
  key.group = estrdup("");
  key.name = estrdup(group_name);
 }
 return key;
}
