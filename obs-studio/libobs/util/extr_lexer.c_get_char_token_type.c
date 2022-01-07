
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum base_token_type { ____Placeholder_base_token_type } base_token_type ;


 int BASETOKEN_ALPHA ;
 int BASETOKEN_DIGIT ;
 int BASETOKEN_OTHER ;
 int BASETOKEN_WHITESPACE ;
 scalar_t__ is_whitespace (char const) ;

__attribute__((used)) static inline enum base_token_type get_char_token_type(const char ch)
{
 if (is_whitespace(ch))
  return BASETOKEN_WHITESPACE;
 else if (ch >= '0' && ch <= '9')
  return BASETOKEN_DIGIT;
 else if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z'))
  return BASETOKEN_ALPHA;

 return BASETOKEN_OTHER;
}
