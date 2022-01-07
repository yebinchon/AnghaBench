
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,int,...) ;

char *
formatPGVersionNumber(int version_number, bool include_minor,
       char *buf, size_t buflen)
{
 if (version_number >= 100000)
 {

  if (include_minor)
   snprintf(buf, buflen, "%d.%d", version_number / 10000,
      version_number % 10000);
  else
   snprintf(buf, buflen, "%d", version_number / 10000);
 }
 else
 {

  if (include_minor)
   snprintf(buf, buflen, "%d.%d.%d", version_number / 10000,
      (version_number / 100) % 100,
      version_number % 100);
  else
   snprintf(buf, buflen, "%d.%d", version_number / 10000,
      (version_number / 100) % 100);
 }
 return buf;
}
