
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int syslog (int,char*,char const*) ;

__attribute__((used)) static void xsyslog(BIO *bp, int priority, const char *string)
{
    syslog(priority, "%s", string);
}
