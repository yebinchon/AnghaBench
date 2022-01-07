
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_OUT_OF_MEMORY ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
guc_strdup(int elevel, const char *src)
{
 char *data;

 data = strdup(src);
 if (data == ((void*)0))
  ereport(elevel,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));
 return data;
}
