
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;


 char* ERR_reason_error_string (unsigned long) ;
 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned long) ;

__attribute__((used)) static const char *
SSLerrmessage(unsigned long ecode)
{
 const char *errreason;
 static char errbuf[36];

 if (ecode == 0)
  return _("no SSL error reported");
 errreason = ERR_reason_error_string(ecode);
 if (errreason != ((void*)0))
  return errreason;
 snprintf(errbuf, sizeof(errbuf), _("SSL error code %lu"), ecode);
 return errbuf;
}
