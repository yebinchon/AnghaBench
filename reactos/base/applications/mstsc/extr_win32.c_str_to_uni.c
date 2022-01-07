
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TCHAR ;


 int strlen (char*) ;

__attribute__((used)) static void
str_to_uni(TCHAR * sizex, char * size1)
{
  int len;
  int i;

  len = strlen(size1);
  for (i = 0; i < len; i++)
  {
    sizex[i] = size1[i];
  }
  sizex[len] = 0;
}
