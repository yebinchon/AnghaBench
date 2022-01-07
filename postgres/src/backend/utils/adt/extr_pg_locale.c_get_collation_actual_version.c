
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UVersionInfo ;
typedef int UErrorCode ;
typedef int UCollator ;


 char COLLPROVIDER_ICU ;
 char COLLPROVIDER_LIBC ;
 int ERROR ;
 scalar_t__ U_FAILURE (int ) ;
 int U_MAX_VERSION_STRING_LENGTH ;
 int U_ZERO_ERROR ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,int ) ;
 char* gnu_get_libc_version () ;
 char* pstrdup (char*) ;
 int u_errorName (int ) ;
 int u_versionToString (int ,char*) ;
 int ucol_close (int *) ;
 int ucol_getVersion (int *,int ) ;
 int * ucol_open (char const*,int *) ;

char *
get_collation_actual_version(char collprovider, const char *collcollate)
{
 char *collversion = ((void*)0);
 if (collprovider == COLLPROVIDER_LIBC)
 {




 }

 return collversion;
}
