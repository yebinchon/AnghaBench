
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CurrentToken ;
 scalar_t__ CurrentTokenType ;
 scalar_t__ TOK_END ;
 int TRUE ;
 int bParseError ;
 int error_syntax (int *) ;

__attribute__((used)) static void ParseError(void)
{
    error_syntax(CurrentTokenType != TOK_END ? CurrentToken : ((void*)0));
    bParseError = TRUE;
}
