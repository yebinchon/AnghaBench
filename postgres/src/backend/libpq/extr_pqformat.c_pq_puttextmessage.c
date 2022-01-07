
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pfree (char*) ;
 char* pg_server_to_client (char const*,int) ;
 int pq_putmessage (char,char const*,int) ;
 int strlen (char const*) ;

void
pq_puttextmessage(char msgtype, const char *str)
{
 int slen = strlen(str);
 char *p;

 p = pg_server_to_client(str, slen);
 if (p != str)
 {
  (void) pq_putmessage(msgtype, p, strlen(p) + 1);
  pfree(p);
  return;
 }
 (void) pq_putmessage(msgtype, str, slen + 1);
}
