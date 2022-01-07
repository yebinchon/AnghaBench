
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YYSTYPE ;
typedef int YYLTYPE ;


 int Assert (int) ;







 int NOT_LA ;
 int NULLS_LA ;





 int WITH_LA ;
 int base_yylex () ;
 int base_yylloc ;
 int base_yylval ;
 char* base_yytext ;
 int have_lookahead ;
 char* lookahead_end ;
 char lookahead_hold_char ;
 int lookahead_token ;
 int lookahead_yylloc ;
 int lookahead_yylval ;
 char* lookahead_yytext ;

int
filtered_base_yylex(void)
{
 int cur_token;
 int next_token;
 int cur_token_length;
 YYSTYPE cur_yylval;
 YYLTYPE cur_yylloc;
 char *cur_yytext;


 if (have_lookahead)
 {
  cur_token = lookahead_token;
  base_yylval = lookahead_yylval;
  base_yylloc = lookahead_yylloc;
  base_yytext = lookahead_yytext;
  *lookahead_end = lookahead_hold_char;
  have_lookahead = 0;
 }
 else
  cur_token = base_yylex();







 switch (cur_token)
 {
  case 133:
   cur_token_length = 3;
   break;
  case 132:
   cur_token_length = 5;
   break;
  case 128:
   cur_token_length = 4;
   break;
  default:
   return cur_token;
 }






 lookahead_end = base_yytext + cur_token_length;
 Assert(*lookahead_end == '\0');


 cur_yylval = base_yylval;
 cur_yylloc = base_yylloc;
 cur_yytext = base_yytext;


 next_token = base_yylex();

 lookahead_token = next_token;
 lookahead_yylval = base_yylval;
 lookahead_yylloc = base_yylloc;
 lookahead_yytext = base_yytext;

 base_yylval = cur_yylval;
 base_yylloc = cur_yylloc;
 base_yytext = cur_yytext;


 lookahead_hold_char = *lookahead_end;
 *lookahead_end = '\0';

 have_lookahead = 1;


 switch (cur_token)
 {
  case 133:

   switch (next_token)
   {
    case 139:
    case 136:
    case 134:
    case 137:
    case 130:
     cur_token = NOT_LA;
     break;
   }
   break;

  case 132:

   switch (next_token)
   {
    case 138:
    case 135:
     cur_token = NULLS_LA;
     break;
   }
   break;

  case 128:

   switch (next_token)
   {
    case 129:
    case 131:
     cur_token = WITH_LA;
     break;
   }
   break;
 }

 return cur_token;
}
