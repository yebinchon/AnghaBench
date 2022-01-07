
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
bpchartruelen(char *s, int len)
{
 int i;





 for (i = len - 1; i >= 0; i--)
 {
  if (s[i] != ' ')
   break;
 }
 return i + 1;
}
