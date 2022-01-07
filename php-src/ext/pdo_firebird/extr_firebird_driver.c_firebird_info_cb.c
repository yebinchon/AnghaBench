
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (void*,char const*) ;

__attribute__((used)) static void firebird_info_cb(void *arg, char const *s)
{
 if (arg) {
  if (*(char*)arg) {
   strcat(arg, " ");
  }
  strcat(arg, s);
 }
}
