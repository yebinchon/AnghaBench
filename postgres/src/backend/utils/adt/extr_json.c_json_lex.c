
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* token_terminator; char* input; int input_length; char* token_start; char* prev_token_terminator; void* token_type; int line_number; } ;
typedef TYPE_1__ JsonLexContext ;


 int JSON_ALPHANUMERIC_CHAR (char) ;
 void* JSON_TOKEN_ARRAY_END ;
 void* JSON_TOKEN_ARRAY_START ;
 void* JSON_TOKEN_COLON ;
 void* JSON_TOKEN_COMMA ;
 void* JSON_TOKEN_END ;
 void* JSON_TOKEN_FALSE ;
 void* JSON_TOKEN_NULL ;
 void* JSON_TOKEN_NUMBER ;
 void* JSON_TOKEN_OBJECT_END ;
 void* JSON_TOKEN_OBJECT_START ;
 void* JSON_TOKEN_STRING ;
 void* JSON_TOKEN_TRUE ;
 int json_lex_number (TYPE_1__*,char*,int *,int *) ;
 int json_lex_string (TYPE_1__*) ;
 int memcmp (char*,char*,int) ;
 int report_invalid_token (TYPE_1__*) ;

__attribute__((used)) static inline void
json_lex(JsonLexContext *lex)
{
 char *s;
 int len;


 s = lex->token_terminator;
 len = s - lex->input;
 while (len < lex->input_length &&
     (*s == ' ' || *s == '\t' || *s == '\n' || *s == '\r'))
 {
  if (*s == '\n')
   ++lex->line_number;
  ++s;
  ++len;
 }
 lex->token_start = s;


 if (len >= lex->input_length)
 {
  lex->token_start = ((void*)0);
  lex->prev_token_terminator = lex->token_terminator;
  lex->token_terminator = s;
  lex->token_type = JSON_TOKEN_END;
 }
 else
  switch (*s)
  {

   case '{':
    lex->prev_token_terminator = lex->token_terminator;
    lex->token_terminator = s + 1;
    lex->token_type = JSON_TOKEN_OBJECT_START;
    break;
   case '}':
    lex->prev_token_terminator = lex->token_terminator;
    lex->token_terminator = s + 1;
    lex->token_type = JSON_TOKEN_OBJECT_END;
    break;
   case '[':
    lex->prev_token_terminator = lex->token_terminator;
    lex->token_terminator = s + 1;
    lex->token_type = JSON_TOKEN_ARRAY_START;
    break;
   case ']':
    lex->prev_token_terminator = lex->token_terminator;
    lex->token_terminator = s + 1;
    lex->token_type = JSON_TOKEN_ARRAY_END;
    break;
   case ',':
    lex->prev_token_terminator = lex->token_terminator;
    lex->token_terminator = s + 1;
    lex->token_type = JSON_TOKEN_COMMA;
    break;
   case ':':
    lex->prev_token_terminator = lex->token_terminator;
    lex->token_terminator = s + 1;
    lex->token_type = JSON_TOKEN_COLON;
    break;
   case '"':

    json_lex_string(lex);
    lex->token_type = JSON_TOKEN_STRING;
    break;
   case '-':

    json_lex_number(lex, s + 1, ((void*)0), ((void*)0));
    lex->token_type = JSON_TOKEN_NUMBER;
    break;
   case '0':
   case '1':
   case '2':
   case '3':
   case '4':
   case '5':
   case '6':
   case '7':
   case '8':
   case '9':

    json_lex_number(lex, s, ((void*)0), ((void*)0));
    lex->token_type = JSON_TOKEN_NUMBER;
    break;
   default:
    {
     char *p;
     for (p = s; p - s < lex->input_length - len && JSON_ALPHANUMERIC_CHAR(*p); p++)
                  ;






     if (p == s)
     {
      lex->prev_token_terminator = lex->token_terminator;
      lex->token_terminator = s + 1;
      report_invalid_token(lex);
     }






     lex->prev_token_terminator = lex->token_terminator;
     lex->token_terminator = p;
     if (p - s == 4)
     {
      if (memcmp(s, "true", 4) == 0)
       lex->token_type = JSON_TOKEN_TRUE;
      else if (memcmp(s, "null", 4) == 0)
       lex->token_type = JSON_TOKEN_NULL;
      else
       report_invalid_token(lex);
     }
     else if (p - s == 5 && memcmp(s, "false", 5) == 0)
      lex->token_type = JSON_TOKEN_FALSE;
     else
      report_invalid_token(lex);

    }
  }
}
