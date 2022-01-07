
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendBinaryStringInfoNT (int ,char const*,int) ;
 int pfree (char*) ;
 char* pg_server_to_client (char const*,int) ;
 int strlen (char const*) ;

void
pq_sendstring(StringInfo buf, const char *str)
{
 int slen = strlen(str);
 char *p;

 p = pg_server_to_client(str, slen);
 if (p != str)
 {
  slen = strlen(p);
  appendBinaryStringInfoNT(buf, p, slen + 1);
  pfree(p);
 }
 else
  appendBinaryStringInfoNT(buf, str, slen + 1);
}
