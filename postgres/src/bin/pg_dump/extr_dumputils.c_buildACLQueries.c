
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int printfPQExpBuffer (int ,char*,...) ;

void
buildACLQueries(PQExpBuffer acl_subquery, PQExpBuffer racl_subquery,
    PQExpBuffer init_acl_subquery, PQExpBuffer init_racl_subquery,
    const char *acl_column, const char *acl_owner,
    const char *obj_kind, bool binary_upgrade)
{
 printfPQExpBuffer(acl_subquery,
       "(SELECT pg_catalog.array_agg(acl ORDER BY row_n) FROM "
       "(SELECT acl, row_n FROM "
       "pg_catalog.unnest(coalesce(%s,pg_catalog.acldefault(%s,%s))) "
       "WITH ORDINALITY AS perm(acl,row_n) "
       "WHERE NOT EXISTS ( "
       "SELECT 1 FROM "
       "pg_catalog.unnest(coalesce(pip.initprivs,pg_catalog.acldefault(%s,%s))) "
       "AS init(init_acl) WHERE acl = init_acl)) as foo)",
       acl_column,
       obj_kind,
       acl_owner,
       obj_kind,
       acl_owner);

 printfPQExpBuffer(racl_subquery,
       "(SELECT pg_catalog.array_agg(acl ORDER BY row_n) FROM "
       "(SELECT acl, row_n FROM "
       "pg_catalog.unnest(coalesce(pip.initprivs,pg_catalog.acldefault(%s,%s))) "
       "WITH ORDINALITY AS initp(acl,row_n) "
       "WHERE NOT EXISTS ( "
       "SELECT 1 FROM "
       "pg_catalog.unnest(coalesce(%s,pg_catalog.acldefault(%s,%s))) "
       "AS permp(orig_acl) WHERE acl = orig_acl)) as foo)",
       obj_kind,
       acl_owner,
       acl_column,
       obj_kind,
       acl_owner);
 if (binary_upgrade)
 {
  printfPQExpBuffer(init_acl_subquery,
        "CASE WHEN privtype = 'e' THEN "
        "(SELECT pg_catalog.array_agg(acl ORDER BY row_n) FROM "
        "(SELECT acl, row_n FROM pg_catalog.unnest(pip.initprivs) "
        "WITH ORDINALITY AS initp(acl,row_n) "
        "WHERE NOT EXISTS ( "
        "SELECT 1 FROM "
        "pg_catalog.unnest(pg_catalog.acldefault(%s,%s)) "
        "AS privm(orig_acl) WHERE acl = orig_acl)) as foo) END",
        obj_kind,
        acl_owner);

  printfPQExpBuffer(init_racl_subquery,
        "CASE WHEN privtype = 'e' THEN "
        "(SELECT pg_catalog.array_agg(acl) FROM "
        "(SELECT acl, row_n FROM "
        "pg_catalog.unnest(pg_catalog.acldefault(%s,%s)) "
        "WITH ORDINALITY AS privp(acl,row_n) "
        "WHERE NOT EXISTS ( "
        "SELECT 1 FROM pg_catalog.unnest(pip.initprivs) "
        "AS initp(init_acl) WHERE acl = init_acl)) as foo) END",
        obj_kind,
        acl_owner);
 }
 else
 {
  printfPQExpBuffer(init_acl_subquery, "NULL");
  printfPQExpBuffer(init_racl_subquery, "NULL");
 }
}
