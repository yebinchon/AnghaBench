
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int core_yyscan_t ;
struct TYPE_6__ {char* scanbuf; } ;
struct TYPE_7__ {int have_lookahead; int lookahead_token; int lookahead_yylloc; char* lookahead_end; char lookahead_hold_char; int lookahead_yylval; TYPE_1__ core_yy_extra; } ;
typedef TYPE_2__ base_yy_extra_type ;
struct TYPE_8__ {int core_yystype; } ;
typedef TYPE_3__ YYSTYPE ;
typedef int YYLTYPE ;


 int Assert (int) ;







 int NOT_LA ;
 int NULLS_LA ;





 int WITH_LA ;
 int core_yylex (int *,int*,int ) ;
 TYPE_2__* pg_yyget_extra (int ) ;

int
base_yylex(YYSTYPE *lvalp, YYLTYPE *llocp, core_yyscan_t yyscanner)
{
 base_yy_extra_type *yyextra = pg_yyget_extra(yyscanner);
 int cur_token;
 int next_token;
 int cur_token_length;
 YYLTYPE cur_yylloc;


 if (yyextra->have_lookahead)
 {
  cur_token = yyextra->lookahead_token;
  lvalp->core_yystype = yyextra->lookahead_yylval;
  *llocp = yyextra->lookahead_yylloc;
  *(yyextra->lookahead_end) = yyextra->lookahead_hold_char;
  yyextra->have_lookahead = 0;
 }
 else
  cur_token = core_yylex(&(lvalp->core_yystype), llocp, yyscanner);







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






 yyextra->lookahead_end = yyextra->core_yy_extra.scanbuf +
  *llocp + cur_token_length;
 Assert(*(yyextra->lookahead_end) == '\0');
 cur_yylloc = *llocp;


 next_token = core_yylex(&(yyextra->lookahead_yylval), llocp, yyscanner);
 yyextra->lookahead_token = next_token;
 yyextra->lookahead_yylloc = *llocp;

 *llocp = cur_yylloc;


 yyextra->lookahead_hold_char = *(yyextra->lookahead_end);
 *(yyextra->lookahead_end) = '\0';

 yyextra->have_lookahead = 1;


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
