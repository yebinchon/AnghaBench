
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL is_space(char c)
{
  switch (c)
  {
    case 0x00:
    case 0x0D:
    case 0x0A:
    case ' ':
    case '\t':
      return TRUE;
  }
  return FALSE;
}
