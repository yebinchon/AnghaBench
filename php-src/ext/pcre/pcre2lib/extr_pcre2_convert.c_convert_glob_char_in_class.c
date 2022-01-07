
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCRE2_UCHAR ;
typedef int BOOL ;


 int CHAR_HT ;
 int CHAR_SPACE ;
 int CHAR_UNDERSCORE ;
 int isalnum (int ) ;
 int isalpha (int ) ;
 int iscntrl (int ) ;
 int isdigit (int ) ;
 int isgraph (int ) ;
 int islower (int ) ;
 int isprint (int ) ;
 int ispunct (int ) ;
 int isspace (int ) ;
 int isupper (int ) ;
 int isxdigit (int ) ;

__attribute__((used)) static BOOL
convert_glob_char_in_class(int class_index, PCRE2_UCHAR c)
{
switch (class_index)
  {
  case 1: return isalnum(c);
  case 2: return isalpha(c);
  case 3: return 1;
  case 4: return c == CHAR_HT || c == CHAR_SPACE;
  case 5: return iscntrl(c);
  case 6: return isdigit(c);
  case 7: return isgraph(c);
  case 8: return islower(c);
  case 9: return isprint(c);
  case 10: return ispunct(c);
  case 11: return isspace(c);
  case 12: return isupper(c);
  case 13: return isalnum(c) || c == CHAR_UNDERSCORE;
  default: return isxdigit(c);
  }
}
