
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int location; int length; } ;
typedef TYPE_1__ pgssLocationLen ;
struct TYPE_8__ {int clocations_count; TYPE_1__* clocations; } ;
typedef TYPE_2__ pgssJumbleState ;
typedef int core_yyscan_t ;
struct TYPE_9__ {int escape_string_warning; scalar_t__ scanbuf; } ;
typedef TYPE_3__ core_yy_extra_type ;
typedef int core_YYSTYPE ;
typedef int YYLTYPE ;


 int Assert (int) ;
 int ScanKeywordTokens ;
 int ScanKeywords ;
 int comp_location ;
 int core_yylex (int *,int*,int ) ;
 int qsort (TYPE_1__*,int,int,int ) ;
 int scanner_finish (int ) ;
 int scanner_init (char const*,TYPE_3__*,int *,int ) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void
fill_in_constant_lengths(pgssJumbleState *jstate, const char *query,
       int query_loc)
{
 pgssLocationLen *locs;
 core_yyscan_t yyscanner;
 core_yy_extra_type yyextra;
 core_YYSTYPE yylval;
 YYLTYPE yylloc;
 int last_loc = -1;
 int i;





 if (jstate->clocations_count > 1)
  qsort(jstate->clocations, jstate->clocations_count,
     sizeof(pgssLocationLen), comp_location);
 locs = jstate->clocations;


 yyscanner = scanner_init(query,
        &yyextra,
        &ScanKeywords,
        ScanKeywordTokens);


 yyextra.escape_string_warning = 0;


 for (i = 0; i < jstate->clocations_count; i++)
 {
  int loc = locs[i].location;
  int tok;


  loc -= query_loc;

  Assert(loc >= 0);

  if (loc <= last_loc)
   continue;


  for (;;)
  {
   tok = core_yylex(&yylval, &yylloc, yyscanner);


   if (tok == 0)
    break;





   if (yylloc >= loc)
   {
    if (query[loc] == '-')
    {
     tok = core_yylex(&yylval, &yylloc, yyscanner);
     if (tok == 0)
      break;
    }





    locs[i].length = strlen(yyextra.scanbuf + loc);
    break;
   }
  }


  if (tok == 0)
   break;

  last_loc = loc;
 }

 scanner_finish(yyscanner);
}
