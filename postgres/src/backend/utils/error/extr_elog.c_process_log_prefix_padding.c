
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
process_log_prefix_padding(const char *p, int *ppadding)
{
 int paddingsign = 1;
 int padding = 0;

 if (*p == '-')
 {
  p++;

  if (*p == '\0')
   return ((void*)0);
  paddingsign = -1;
 }


 while (*p >= '0' && *p <= '9')
  padding = padding * 10 + (*p++ - '0');


 if (*p == '\0')
  return ((void*)0);

 padding *= paddingsign;
 *ppadding = padding;
 return p;
}
