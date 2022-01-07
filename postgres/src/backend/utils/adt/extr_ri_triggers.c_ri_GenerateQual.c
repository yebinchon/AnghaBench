
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Oid ;


 int appendStringInfo (int ,char*,char const*) ;
 int generate_operator_clause (int ,char const*,int ,int ,char const*,int ) ;

__attribute__((used)) static void
ri_GenerateQual(StringInfo buf,
    const char *sep,
    const char *leftop, Oid leftoptype,
    Oid opoid,
    const char *rightop, Oid rightoptype)
{
 appendStringInfo(buf, " %s ", sep);
 generate_operator_clause(buf, leftop, leftoptype, opoid,
        rightop, rightoptype);
}
