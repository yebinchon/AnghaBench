
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 char* get_errno_symbol (int) ;
 char* gnuish_strerror_r (int,char*,size_t) ;
 int snprintf (char*,size_t,char*,int) ;
 char* win32_socket_strerror (int,char*,size_t) ;

char *
pg_strerror_r(int errnum, char *buf, size_t buflen)
{
 char *str;
 str = gnuish_strerror_r(errnum, buf, buflen);
 if (str == ((void*)0) || *str == '\0' || *str == '?')
  str = get_errno_symbol(errnum);

 if (str == ((void*)0))
 {
  snprintf(buf, buflen, _("operating system error %d"), errnum);
  str = buf;
 }

 return str;
}
