
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERROR ;
 int elog (int ,char*,int ) ;
 char* explain_get_index_name_hook (int ) ;
 char* get_rel_name (int ) ;
 char* quote_identifier (char const*) ;
 char* stub1 (int ) ;

__attribute__((used)) static const char *
explain_get_index_name(Oid indexId)
{
 const char *result;

 if (explain_get_index_name_hook)
  result = (*explain_get_index_name_hook) (indexId);
 else
  result = ((void*)0);
 if (result == ((void*)0))
 {

  result = get_rel_name(indexId);
  if (result == ((void*)0))
   elog(ERROR, "cache lookup failed for index %u", indexId);
  result = quote_identifier(result);
 }
 return result;
}
