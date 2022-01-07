
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* input; int input_length; char* prev_token_terminator; char* token_terminator; } ;
typedef TYPE_1__ JsonLexContext ;


 scalar_t__ JSON_ALPHANUMERIC_CHAR (char) ;
 int report_invalid_token (TYPE_1__*) ;

__attribute__((used)) static inline void
json_lex_number(JsonLexContext *lex, char *s,
    bool *num_err, int *total_len)
{
 bool error = 0;
 int len = s - lex->input;





 if (len < lex->input_length && *s == '0')
 {
  s++;
  len++;
 }
 else if (len < lex->input_length && *s >= '1' && *s <= '9')
 {
  do
  {
   s++;
   len++;
  } while (len < lex->input_length && *s >= '0' && *s <= '9');
 }
 else
  error = 1;


 if (len < lex->input_length && *s == '.')
 {
  s++;
  len++;
  if (len == lex->input_length || *s < '0' || *s > '9')
   error = 1;
  else
  {
   do
   {
    s++;
    len++;
   } while (len < lex->input_length && *s >= '0' && *s <= '9');
  }
 }


 if (len < lex->input_length && (*s == 'e' || *s == 'E'))
 {
  s++;
  len++;
  if (len < lex->input_length && (*s == '+' || *s == '-'))
  {
   s++;
   len++;
  }
  if (len == lex->input_length || *s < '0' || *s > '9')
   error = 1;
  else
  {
   do
   {
    s++;
    len++;
   } while (len < lex->input_length && *s >= '0' && *s <= '9');
  }
 }






 for (; len < lex->input_length && JSON_ALPHANUMERIC_CHAR(*s); s++, len++)
  error = 1;

 if (total_len != ((void*)0))
  *total_len = len;

 if (num_err != ((void*)0))
 {

  *num_err = error;
 }
 else
 {

  lex->prev_token_terminator = lex->token_terminator;
  lex->token_terminator = s;

  if (error)
   report_invalid_token(lex);
 }
}
