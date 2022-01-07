
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int value ;
typedef int subkey ;
typedef int line ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int FILE ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 char* MG_DEFAULT_NAMESERVER ;
 int MG_RESOLV_CONF_FILE_NAME ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,int,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int ,int*,void*,int*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int fprintf (int ,char*,char*,scalar_t__) ;
 int * mg_fopen (int ,char*) ;
 int snprintf (char*,size_t,char*,...) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int stderr ;
 char* wcschr (char*,char) ;

__attribute__((used)) static int mg_get_ip_address_of_nameserver(char *name, size_t name_len) {
  int ret = -1;
  snprintf(name, name_len, "%s", MG_DEFAULT_NAMESERVER);


  return ret;
}
