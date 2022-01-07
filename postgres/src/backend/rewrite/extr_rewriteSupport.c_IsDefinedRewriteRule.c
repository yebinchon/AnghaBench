
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (char const*) ;
 int RULERELNAME ;
 int SearchSysCacheExists2 (int ,int ,int ) ;

bool
IsDefinedRewriteRule(Oid owningRel, const char *ruleName)
{
 return SearchSysCacheExists2(RULERELNAME,
         ObjectIdGetDatum(owningRel),
         PointerGetDatum(ruleName));
}
