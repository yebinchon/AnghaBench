
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool valid_string(const char *str)
{
 while (str && *str) {
  if (*(str++) != ' ')
   return 1;
 }

 return 0;
}
