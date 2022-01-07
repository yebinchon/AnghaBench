
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strerror (int) ;
 char* strerror_r (int,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static char *
gnuish_strerror_r(int errnum, char *buf, size_t buflen)
{
 char *sbuf = strerror(errnum);

 if (sbuf == ((void*)0))
  return ((void*)0);

 strlcpy(buf, sbuf, buflen);
 return buf;

}
