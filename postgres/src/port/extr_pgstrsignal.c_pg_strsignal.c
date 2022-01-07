
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsignal (int) ;

const char *
pg_strsignal(int signum)
{
 const char *result;
 result = "(signal names not available on this platform)";


 return result;
}
