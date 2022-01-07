
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static int
pair_count(char *s, char delim)
{
 int ndelim = 0;

 while ((s = strchr(s, delim)) != ((void*)0))
 {
  ndelim++;
  s++;
 }
 return (ndelim % 2) ? ((ndelim + 1) / 2) : -1;
}
