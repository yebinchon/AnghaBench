
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQconninfoOption ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int PQconninfoFree (int *) ;
 int * PQconninfoParse (char const*,char**) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;

__attribute__((used)) static void
libpqrcv_check_conninfo(const char *conninfo)
{
 PQconninfoOption *opts = ((void*)0);
 char *err = ((void*)0);

 opts = PQconninfoParse(conninfo, &err);
 if (opts == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("invalid connection string syntax: %s", err)));

 PQconninfoFree(opts);
}
