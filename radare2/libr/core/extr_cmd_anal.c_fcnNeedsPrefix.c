
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strchr (char const*,char) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static bool fcnNeedsPrefix(const char *name) {
 if (!strncmp (name, "entry", 5)) {
  return 0;
 }
 if (!strncmp (name, "main", 4)) {
  return 0;
 }
 return (!strchr (name, '.'));
}
