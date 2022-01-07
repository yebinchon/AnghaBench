
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int TSQueryParserState ;
typedef int Datum ;


 int pushValue (int ,char*,int,int ,int) ;

__attribute__((used)) static void
pushval_asis(Datum opaque, TSQueryParserState state, char *strval, int lenval,
    int16 weight, bool prefix)
{
 pushValue(state, strval, lenval, weight, prefix);
}
