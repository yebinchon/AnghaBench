
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; } ;
typedef int sbuf ;
typedef int hbuf ;


 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int err (char*,int ) ;
 int gai_strerror (int) ;
 int getnameinfo (int ,int ,char*,int,char*,int,int) ;
 int snprintf (char*,size_t const,char*,char*,char*) ;

__attribute__((used)) static void addrinfo_to_text(struct addrinfo *ai, char buf[],
        const size_t buf_size)
{
 char hbuf[NI_MAXHOST];
 char sbuf[NI_MAXSERV];
 int rc;

 buf[0] = '\0';

 rc = getnameinfo(ai->ai_addr, ai->ai_addrlen, hbuf, sizeof(hbuf),
    sbuf, sizeof(sbuf), NI_NUMERICHOST | NI_NUMERICSERV);
 if (rc)
  err("getnameinfo: %s", gai_strerror(rc));

 snprintf(buf, buf_size, "%s:%s", hbuf, sbuf);
}
