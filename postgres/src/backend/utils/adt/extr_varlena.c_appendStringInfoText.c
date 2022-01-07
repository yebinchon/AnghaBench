
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int StringInfo ;


 int VARDATA_ANY (int const*) ;
 int VARSIZE_ANY_EXHDR (int const*) ;
 int appendBinaryStringInfo (int ,int ,int ) ;

__attribute__((used)) static void
appendStringInfoText(StringInfo str, const text *t)
{
 appendBinaryStringInfo(str, VARDATA_ANY(t), VARSIZE_ANY_EXHDR(t));
}
