
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
typedef int nvram_handle_t ;


 int memset (char*,int ,int) ;
 int nvram_set (int *,char*,char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int do_set(nvram_handle_t *nvram, const char *pair)
{
 char *val = strstr(pair, "=");
 char var[strlen(pair)];
 int stat = 1;

 if( val != ((void*)0) )
 {
  memset(var, 0, sizeof(var));
  strncpy(var, pair, (int)(val-pair));
  stat = nvram_set(nvram, var, (char *)(val + 1));
 }

 return stat;
}
