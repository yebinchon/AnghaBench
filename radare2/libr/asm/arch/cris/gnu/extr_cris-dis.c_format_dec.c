
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long last_immediate ;
 int sprintf (char*,char*,long) ;
 int strlen (char*) ;

__attribute__((used)) static char *
format_dec (long number, char *outbuffer, int signedp)
{
  last_immediate = number;
  sprintf (outbuffer, signedp ? "%ld" : "%lu", number);

  return outbuffer + strlen (outbuffer);
}
