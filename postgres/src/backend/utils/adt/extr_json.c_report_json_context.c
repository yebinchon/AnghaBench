
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* input; char* token_terminator; scalar_t__ token_type; int input_length; } ;
typedef TYPE_1__ JsonLexContext ;


 scalar_t__ IS_HIGHBIT_SET (char const) ;
 scalar_t__ JSON_TOKEN_END ;
 int errcontext (char*,int,char const*,char*,char const*) ;
 int memcpy (char*,char const*,int) ;
 char* palloc (int) ;
 int pg_mblen (char const*) ;

__attribute__((used)) static int
report_json_context(JsonLexContext *lex)
{
 const char *context_start;
 const char *context_end;
 const char *line_start;
 int line_number;
 char *ctxt;
 int ctxtlen;
 const char *prefix;
 const char *suffix;


 context_start = lex->input;
 context_end = lex->token_terminator;
 line_start = context_start;
 line_number = 1;
 for (;;)
 {

  if (context_start < context_end && *context_start == '\n')
  {
   context_start++;
   line_start = context_start;
   line_number++;
   continue;
  }

  if (context_end - context_start < 50)
   break;

  if (IS_HIGHBIT_SET(*context_start))
   context_start += pg_mblen(context_start);
  else
   context_start++;
 }






 if (context_start - line_start <= 3)
  context_start = line_start;


 ctxtlen = context_end - context_start;
 ctxt = palloc(ctxtlen + 1);
 memcpy(ctxt, context_start, ctxtlen);
 ctxt[ctxtlen] = '\0';





 prefix = (context_start > line_start) ? "..." : "";
 suffix = (lex->token_type != JSON_TOKEN_END && context_end - lex->input < lex->input_length && *context_end != '\n' && *context_end != '\r') ? "..." : "";

 return errcontext("JSON data, line %d: %s%s%s",
       line_number, prefix, ctxt, suffix);
}
