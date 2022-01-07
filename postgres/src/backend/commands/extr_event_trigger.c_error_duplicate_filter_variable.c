
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

__attribute__((used)) static void
error_duplicate_filter_variable(const char *defname)
{
 ereport(ERROR,
   (errcode(ERRCODE_SYNTAX_ERROR),
    errmsg("filter variable \"%s\" specified more than once",
     defname)));
}
