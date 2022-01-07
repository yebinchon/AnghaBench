
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PreparedStatement ;


 int ERRCODE_UNDEFINED_PSTATEMENT ;
 int ERROR ;
 int HASH_FIND ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ hash_search (scalar_t__,char const*,int ,int *) ;
 scalar_t__ prepared_queries ;

PreparedStatement *
FetchPreparedStatement(const char *stmt_name, bool throwError)
{
 PreparedStatement *entry;





 if (prepared_queries)
  entry = (PreparedStatement *) hash_search(prepared_queries,
              stmt_name,
              HASH_FIND,
              ((void*)0));
 else
  entry = ((void*)0);

 if (!entry && throwError)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_PSTATEMENT),
     errmsg("prepared statement \"%s\" does not exist",
      stmt_name)));

 return entry;
}
