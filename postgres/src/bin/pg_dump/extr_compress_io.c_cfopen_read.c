
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cfp ;


 int * cfopen (char const*,char const*,int) ;
 int free_keep_errno (char*) ;
 scalar_t__ hasSuffix (char const*,char*) ;
 char* psprintf (char*,char const*) ;

cfp *
cfopen_read(const char *path, const char *mode)
{
 cfp *fp;






 {
  fp = cfopen(path, mode, 0);
 }
 return fp;
}
