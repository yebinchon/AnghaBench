
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int PG_UTF8 ;
 int * fgets (char*,int,int *) ;
 char* pg_any_to_server (char*,int,int ) ;
 int pg_verify_mbstr (int ,char*,int,int) ;
 char* pnstrdup (char*,int) ;
 int strlen (char*) ;

char *
t_readline(FILE *fp)
{
 int len;
 char *recoded;
 char buf[4096];

 if (fgets(buf, sizeof(buf), fp) == ((void*)0))
  return ((void*)0);

 len = strlen(buf);


 (void) pg_verify_mbstr(PG_UTF8, buf, len, 0);


 recoded = pg_any_to_server(buf, len, PG_UTF8);
 if (recoded == buf)
 {




  recoded = pnstrdup(recoded, len);
 }

 return recoded;
}
