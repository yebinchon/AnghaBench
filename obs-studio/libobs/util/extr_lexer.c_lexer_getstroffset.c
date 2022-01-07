
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lexer {char* text; } ;


 scalar_t__ is_newline (char const) ;
 int newline_size (char const*) ;

void lexer_getstroffset(const struct lexer *lex, const char *str, uint32_t *row,
   uint32_t *col)
{
 uint32_t cur_col = 1, cur_row = 1;
 const char *text = lex->text;

 if (!str)
  return;

 while (text < str) {
  if (is_newline(*text)) {
   text += newline_size(text) - 1;
   cur_col = 1;
   cur_row++;
  } else {
   cur_col++;
  }

  text++;
 }

 *row = cur_row;
 *col = cur_col;
}
