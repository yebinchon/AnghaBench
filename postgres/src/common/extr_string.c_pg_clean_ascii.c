
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
pg_clean_ascii(char *str)
{

 char *p;

 for (p = str; *p != '\0'; p++)
 {
  if (*p < 32 || *p > 126)
   *p = '?';
 }
}
