
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendBinaryStringInfoNT (int ,char const*,int) ;
 int pfree (char*) ;
 char* pg_server_to_client (char const*,int) ;
 int pq_sendint32 (int ,int) ;
 int strlen (char*) ;

void
pq_sendcountedtext(StringInfo buf, const char *str, int slen,
       bool countincludesself)
{
 int extra = countincludesself ? 4 : 0;
 char *p;

 p = pg_server_to_client(str, slen);
 if (p != str)
 {
  slen = strlen(p);
  pq_sendint32(buf, slen + extra);
  appendBinaryStringInfoNT(buf, p, slen);
  pfree(p);
 }
 else
 {
  pq_sendint32(buf, slen + extra);
  appendBinaryStringInfoNT(buf, str, slen);
 }
}
