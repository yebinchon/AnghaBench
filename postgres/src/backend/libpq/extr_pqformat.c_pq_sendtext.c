
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendBinaryStringInfo (int ,char const*,int) ;
 int pfree (char*) ;
 char* pg_server_to_client (char const*,int) ;
 int strlen (char*) ;

void
pq_sendtext(StringInfo buf, const char *str, int slen)
{
 char *p;

 p = pg_server_to_client(str, slen);
 if (p != str)
 {
  slen = strlen(p);
  appendBinaryStringInfo(buf, p, slen);
  pfree(p);
 }
 else
  appendBinaryStringInfo(buf, str, slen);
}
