
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;


 char* default_domain ;
 scalar_t__ getdomainname (char*,int) ;
 scalar_t__ malloc (unsigned int) ;
 int strcpy (char*,char*) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static char *
get_default_domain()
{

 char temp[256];


 if (default_domain)
  return (default_domain);

 if (getdomainname(temp, sizeof(temp)) < 0)
  return (0);
 if ((int) strlen(temp) > 0) {
  default_domain = (char *)malloc((strlen(temp)+(unsigned)1));
  if (default_domain == 0)
   return (((void*)0));
  (void) strcpy(default_domain, temp);
  return (default_domain);
 }

 return (((void*)0));
}
