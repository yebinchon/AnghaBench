
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL is_operator(char c)
{
  switch(c)
  {
    case '{':
    case '}':
    case '[':
    case ']':
    case '(':
    case ')':
    case '<':
    case '>':
    case ',':
    case ';':
      return TRUE;
  }
  return FALSE;
}
