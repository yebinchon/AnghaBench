
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int core_yyscan_t ;
struct TYPE_3__ {int have_lookahead; int * parsetree; int core_yy_extra; } ;
typedef TYPE_1__ base_yy_extra_type ;
typedef int List ;


 int * NIL ;
 int ScanKeywordTokens ;
 int ScanKeywords ;
 int base_yyparse (int ) ;
 int parser_init (TYPE_1__*) ;
 int scanner_finish (int ) ;
 int scanner_init (char const*,int *,int *,int ) ;

List *
raw_parser(const char *str)
{
 core_yyscan_t yyscanner;
 base_yy_extra_type yyextra;
 int yyresult;


 yyscanner = scanner_init(str, &yyextra.core_yy_extra,
        &ScanKeywords, ScanKeywordTokens);


 yyextra.have_lookahead = 0;


 parser_init(&yyextra);


 yyresult = base_yyparse(yyscanner);


 scanner_finish(yyscanner);

 if (yyresult)
  return NIL;

 return yyextra.parsetree;
}
