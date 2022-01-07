
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 char* NVRAM_STAGING ;
 int S_IFREG ;
 int stat (char*,struct stat*) ;

char * nvram_find_staging(void)
{
 struct stat s;

 if( (stat(NVRAM_STAGING, &s) > -1) && (s.st_mode & S_IFREG) )
 {
  return NVRAM_STAGING;
 }

 return ((void*)0);
}
