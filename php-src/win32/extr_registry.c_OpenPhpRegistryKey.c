
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 scalar_t__ RegOpenKeyEx (int ,char const*,int ,int ,int *) ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char** registry_keys ;
 size_t strlen (char const*) ;

__attribute__((used)) static int OpenPhpRegistryKey(char* sub_key, HKEY *hKey)
{
 const char **key_name = registry_keys;

 if (sub_key) {
  size_t main_key_len;
  size_t sub_key_len = strlen(sub_key);
  char *reg_key;

  while (*key_name) {
   LONG ret;

   main_key_len = strlen(*key_name);
   reg_key = emalloc(main_key_len + sub_key_len + 1);
   memcpy(reg_key, *key_name, main_key_len);
   memcpy(reg_key + main_key_len, sub_key, sub_key_len + 1);
   ret = RegOpenKeyEx(HKEY_LOCAL_MACHINE, reg_key, 0, KEY_READ, hKey);
   efree(reg_key);

   if (ret == ERROR_SUCCESS) {
    return 1;
   }
   ++key_name;
  }
 } else {
  while (*key_name) {
   if (RegOpenKeyEx(HKEY_LOCAL_MACHINE, *key_name, 0, KEY_READ, hKey) == ERROR_SUCCESS) {
    return 1;
   }
   ++key_name;
  }
 }
 return 0;
}
