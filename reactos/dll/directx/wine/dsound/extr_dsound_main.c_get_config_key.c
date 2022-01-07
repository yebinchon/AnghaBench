
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;


 int ERROR_FILE_NOT_FOUND ;
 int RegQueryValueExA (scalar_t__,char const*,int ,int *,int ,int *) ;

__attribute__((used)) static inline DWORD get_config_key( HKEY defkey, HKEY appkey, const char *name,
                                    char *buffer, DWORD size )
{
    if (appkey && !RegQueryValueExA( appkey, name, 0, ((void*)0), (LPBYTE)buffer, &size )) return 0;
    if (defkey && !RegQueryValueExA( defkey, name, 0, ((void*)0), (LPBYTE)buffer, &size )) return 0;
    return ERROR_FILE_NOT_FOUND;
}
