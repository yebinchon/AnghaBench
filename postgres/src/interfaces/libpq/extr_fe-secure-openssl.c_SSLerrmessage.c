
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ERR_reason_error_string (unsigned long) ;
 int SSL_ERR_LEN ;
 char* libpq_gettext (char*) ;
 char* malloc (int ) ;
 int snprintf (char*,int ,char*,...) ;
 char* ssl_nomem ;
 int strlcpy (char*,char const*,int ) ;

__attribute__((used)) static char *
SSLerrmessage(unsigned long ecode)
{
 const char *errreason;
 char *errbuf;

 errbuf = malloc(SSL_ERR_LEN);
 if (!errbuf)
  return ssl_nomem;
 if (ecode == 0)
 {
  snprintf(errbuf, SSL_ERR_LEN, libpq_gettext("no SSL error reported"));
  return errbuf;
 }
 errreason = ERR_reason_error_string(ecode);
 if (errreason != ((void*)0))
 {
  strlcpy(errbuf, errreason, SSL_ERR_LEN);
  return errbuf;
 }
 snprintf(errbuf, SSL_ERR_LEN, libpq_gettext("SSL error code %lu"), ecode);
 return errbuf;
}
