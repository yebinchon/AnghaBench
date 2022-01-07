
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int TOKEN_CANGLE ;
 int TOKEN_CBRACE ;
 int TOKEN_CBRACKET ;
 int TOKEN_COMMA ;
 int TOKEN_CPAREN ;
 int TOKEN_OANGLE ;
 int TOKEN_OBRACE ;
 int TOKEN_OBRACKET ;
 int TOKEN_OPAREN ;
 int TOKEN_SEMICOLON ;

__attribute__((used)) static WORD get_operator_token(char c)
{
  switch(c)
  {
    case '{':
      return TOKEN_OBRACE;
    case '}':
      return TOKEN_CBRACE;
    case '[':
      return TOKEN_OBRACKET;
    case ']':
      return TOKEN_CBRACKET;
    case '(':
      return TOKEN_OPAREN;
    case ')':
      return TOKEN_CPAREN;
    case '<':
      return TOKEN_OANGLE;
    case '>':
      return TOKEN_CANGLE;
    case ',':
      return TOKEN_COMMA;
    case ';':
      return TOKEN_SEMICOLON;
  }
  return 0;
}
