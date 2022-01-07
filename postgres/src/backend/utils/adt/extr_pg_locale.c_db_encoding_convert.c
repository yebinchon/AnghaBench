
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int free (char*) ;
 int pfree (char*) ;
 char* pg_any_to_server (char*,int ,int) ;
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
db_encoding_convert(int encoding, char **str)
{
 char *pstr;
 char *mstr;


 pstr = pg_any_to_server(*str, strlen(*str), encoding);
 if (pstr == *str)
  return;


 mstr = strdup(pstr);
 if (mstr == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));


 free(*str);
 *str = mstr;

 pfree(pstr);
}
