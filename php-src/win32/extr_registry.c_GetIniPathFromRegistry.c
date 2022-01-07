
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MAXPATHLEN ;
 scalar_t__ OpenPhpRegistryKey (int *,int *) ;
 int PHPRC_REGISTRY_NAME ;
 int RegCloseKey (int ) ;
 scalar_t__ RegQueryValueEx (int ,int ,int ,int *,char*,scalar_t__*) ;
 int efree (char*) ;
 char* emalloc (scalar_t__) ;

char *GetIniPathFromRegistry()
{
 char *reg_location = ((void*)0);
 HKEY hKey;

 if (OpenPhpRegistryKey(((void*)0), &hKey)) {
  DWORD buflen = MAXPATHLEN;
  reg_location = emalloc(MAXPATHLEN+1);
  if(RegQueryValueEx(hKey, PHPRC_REGISTRY_NAME, 0, ((void*)0), reg_location, &buflen) != ERROR_SUCCESS) {
   RegCloseKey(hKey);
   efree(reg_location);
   reg_location = ((void*)0);
   return reg_location;
  }
  RegCloseKey(hKey);
 }
 return reg_location;
}
