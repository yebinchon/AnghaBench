
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HKEY ;


 char* GetMultiByteString (int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 int SHDeleteKey (int ,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,int ,char*) ;
 int getAppName () ;
 int parseKeyName (int *,int *,int **) ;
 int stderr ;

void delete_registry_key(WCHAR *reg_key_name)
{
    WCHAR *key_name = ((void*)0);
    HKEY key_class;

    if (!reg_key_name || !reg_key_name[0])
        return;

    if (!parseKeyName(reg_key_name, &key_class, &key_name)) {
        char* reg_key_nameA = GetMultiByteString(reg_key_name);
        fprintf(stderr,"%S: Incorrect registry class specification in '%s'\n",
                getAppName(), reg_key_nameA);
        HeapFree(GetProcessHeap(), 0, reg_key_nameA);
        exit(1);
    }
    if (!*key_name) {
        char* reg_key_nameA = GetMultiByteString(reg_key_name);
        fprintf(stderr,"%S: Can't delete registry class '%s'\n",
                getAppName(), reg_key_nameA);
        HeapFree(GetProcessHeap(), 0, reg_key_nameA);
        exit(1);
    }

    SHDeleteKey(key_class, key_name);
}
