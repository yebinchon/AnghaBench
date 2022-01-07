
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NodeTag ;


 scalar_t__ ERANGE ;
 int LEFT_BRACE ;
 int LEFT_PAREN ;
 int OTHER_TOKEN ;
 int RIGHT_PAREN ;
 int T_BitString ;
 int T_Float ;
 int T_Integer ;
 int T_String ;
 scalar_t__ errno ;
 scalar_t__ isdigit (unsigned char) ;
 int strtoint (char const*,char**,int) ;

__attribute__((used)) static NodeTag
nodeTokenType(const char *token, int length)
{
 NodeTag retval;
 const char *numptr;
 int numlen;




 numptr = token;
 numlen = length;
 if (*numptr == '+' || *numptr == '-')
  numptr++, numlen--;
 if ((numlen > 0 && isdigit((unsigned char) *numptr)) ||
  (numlen > 1 && *numptr == '.' && isdigit((unsigned char) numptr[1])))
 {






  char *endptr;

  errno = 0;
  (void) strtoint(token, &endptr, 10);
  if (endptr != token + length || errno == ERANGE)
   return T_Float;
  return T_Integer;
 }





 else if (*token == '(')
  retval = LEFT_PAREN;
 else if (*token == ')')
  retval = RIGHT_PAREN;
 else if (*token == '{')
  retval = LEFT_BRACE;
 else if (*token == '"' && length > 1 && token[length - 1] == '"')
  retval = T_String;
 else if (*token == 'b')
  retval = T_BitString;
 else
  retval = OTHER_TOKEN;
 return retval;
}
