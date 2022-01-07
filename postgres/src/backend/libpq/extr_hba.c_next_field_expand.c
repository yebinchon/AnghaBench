
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int List ;


 int MAX_TOKEN ;
 int * NIL ;
 int * lappend (int *,int ) ;
 int make_hba_token (char*,int) ;
 int next_token (char**,char*,int,int*,int*,int,char**) ;
 int * tokenize_inc_file (int *,char const*,char*,int,char**) ;

__attribute__((used)) static List *
next_field_expand(const char *filename, char **lineptr,
      int elevel, char **err_msg)
{
 char buf[MAX_TOKEN];
 bool trailing_comma;
 bool initial_quote;
 List *tokens = NIL;

 do
 {
  if (!next_token(lineptr, buf, sizeof(buf),
      &initial_quote, &trailing_comma,
      elevel, err_msg))
   break;


  if (!initial_quote && buf[0] == '@' && buf[1] != '\0')
   tokens = tokenize_inc_file(tokens, filename, buf + 1,
            elevel, err_msg);
  else
   tokens = lappend(tokens, make_hba_token(buf, initial_quote));
 } while (trailing_comma && (*err_msg == ((void*)0)));

 return tokens;
}
