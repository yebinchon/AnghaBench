
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef scalar_t__ Oid ;


 int ERROR ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 int elog (int ,char*,scalar_t__) ;
 char* get_namespace_name (scalar_t__) ;
 int pq_sendbyte (int ,char) ;
 int pq_sendstring (int ,char*) ;

__attribute__((used)) static void
logicalrep_write_namespace(StringInfo out, Oid nspid)
{
 if (nspid == PG_CATALOG_NAMESPACE)
  pq_sendbyte(out, '\0');
 else
 {
  char *nspname = get_namespace_name(nspid);

  if (nspname == ((void*)0))
   elog(ERROR, "cache lookup failed for namespace %u",
     nspid);

  pq_sendstring(out, nspname);
 }
}
