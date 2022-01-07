
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parse_buffer ;
typedef int WORD ;


 int TOKEN_ARRAY ;
 int TOKEN_CHAR ;
 int TOKEN_CSTRING ;
 int TOKEN_DOUBLE ;
 int TOKEN_DWORD ;
 int TOKEN_FLOAT ;
 int TOKEN_LPSTR ;
 int TOKEN_SDWORD ;
 int TOKEN_SWORD ;
 int TOKEN_TEMPLATE ;
 int TOKEN_UCHAR ;
 int TOKEN_UNICODE ;
 int TOKEN_VOID ;
 int TOKEN_WORD ;
 scalar_t__ is_keyword (int *,char*) ;

__attribute__((used)) static WORD get_keyword_token(parse_buffer* buf)
{
  if (is_keyword(buf, "template"))
    return TOKEN_TEMPLATE;
  if (is_keyword(buf, "WORD"))
    return TOKEN_WORD;
  if (is_keyword(buf, "DWORD"))
    return TOKEN_DWORD;
  if (is_keyword(buf, "FLOAT"))
    return TOKEN_FLOAT;
  if (is_keyword(buf, "DOUBLE"))
    return TOKEN_DOUBLE;
  if (is_keyword(buf, "CHAR"))
    return TOKEN_CHAR;
  if (is_keyword(buf, "UCHAR"))
    return TOKEN_UCHAR;
  if (is_keyword(buf, "SWORD"))
    return TOKEN_SWORD;
  if (is_keyword(buf, "SDWORD"))
    return TOKEN_SDWORD;
  if (is_keyword(buf, "VOID"))
    return TOKEN_VOID;
  if (is_keyword(buf, "STRING"))
    return TOKEN_LPSTR;
  if (is_keyword(buf, "UNICODE"))
    return TOKEN_UNICODE;
  if (is_keyword(buf, "CSTRING"))
    return TOKEN_CSTRING;
  if (is_keyword(buf, "array"))
    return TOKEN_ARRAY;

  return 0;
}
