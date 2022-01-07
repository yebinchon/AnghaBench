
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Min (int,int) ;

__attribute__((used)) static int
cliplen(const char *str, int len, int limit)
{
 int l = 0;

 len = Min(len, limit);
 while (l < len && str[l])
  l++;
 return l;
}
