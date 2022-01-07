
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 char RELKIND_FOREIGN_TABLE ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char const*,char const*) ;
 int errmsg (char*,char const*,char const*) ;

void
CheckSubscriptionRelkind(char relkind, const char *nspname,
       const char *relname)
{




 if (relkind == RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot use relation \"%s.%s\" as logical replication target",
      nspname, relname),
     errdetail("\"%s.%s\" is a partitioned table.",
         nspname, relname)));
 else if (relkind == RELKIND_FOREIGN_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot use relation \"%s.%s\" as logical replication target",
      nspname, relname),
     errdetail("\"%s.%s\" is a foreign table.",
         nspname, relname)));

 if (relkind != RELKIND_RELATION)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot use relation \"%s.%s\" as logical replication target",
      nspname, relname),
     errdetail("\"%s.%s\" is not a table.",
         nspname, relname)));
}
