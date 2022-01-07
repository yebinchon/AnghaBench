
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;


 int lstrlen (scalar_t__*) ;

__attribute__((used)) static void
uni_to_str(char * sizex, TCHAR * size1)
{
  int len;
  int i;

  len = lstrlen(size1);
  for (i = 0; i < len; i++)
  {
    sizex[i] = (char)size1[i];
  }
  sizex[len] = 0;
}
