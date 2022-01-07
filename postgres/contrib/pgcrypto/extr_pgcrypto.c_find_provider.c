
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int (* PFN ) (char*,void**) ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 char* downcase_truncate_identifier (int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,int ) ;
 int pfree (char*) ;
 int px_strerror (int) ;

__attribute__((used)) static void *
find_provider(text *name,
     PFN provider_lookup,
     const char *desc, int silent)
{
 void *res;
 char *buf;
 int err;

 buf = downcase_truncate_identifier(VARDATA_ANY(name),
            VARSIZE_ANY_EXHDR(name),
            0);

 err = provider_lookup(buf, &res);

 if (err && !silent)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("Cannot use \"%s\": %s", buf, px_strerror(err))));

 pfree(buf);

 return err ? ((void*)0) : res;
}
