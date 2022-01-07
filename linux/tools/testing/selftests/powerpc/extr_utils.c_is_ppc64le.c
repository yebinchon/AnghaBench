
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int machine; } ;


 scalar_t__ errno ;
 int perror (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int uname (struct utsname*) ;

bool is_ppc64le(void)
{
 struct utsname uts;
 int rc;

 errno = 0;
 rc = uname(&uts);
 if (rc) {
  perror("uname");
  return 0;
 }

 return strcmp(uts.machine, "ppc64le") == 0;
}
