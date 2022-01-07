
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDENTIFIER_LOOKUP_NORMAL ;
 int ReservedPLKeywordTokens ;
 int ReservedPLKeywords ;
 int core_yy ;
 int location_lineno_init () ;
 scalar_t__ num_pushbacks ;
 int plpgsql_IdentifierLookup ;
 scalar_t__ plpgsql_yytoken ;
 int scanner_init (char const*,int *,int *,int ) ;
 char const* scanorig ;
 int yyscanner ;

void
plpgsql_scanner_init(const char *str)
{

 yyscanner = scanner_init(str, &core_yy,
        &ReservedPLKeywords, ReservedPLKeywordTokens);







 scanorig = str;


 plpgsql_IdentifierLookup = IDENTIFIER_LOOKUP_NORMAL;
 plpgsql_yytoken = 0;

 num_pushbacks = 0;

 location_lineno_init();
}
