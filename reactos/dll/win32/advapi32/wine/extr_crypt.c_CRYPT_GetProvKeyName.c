
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ PWSTR ;
typedef char const* PCWSTR ;


 scalar_t__ CRYPT_Alloc (int) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int SetLastError (int ) ;
 int strcpyW (scalar_t__,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static inline PWSTR CRYPT_GetProvKeyName(PCWSTR pProvName)
{
 static const WCHAR KEYSTR[] = {
                'S','o','f','t','w','a','r','e','\\',
                'M','i','c','r','o','s','o','f','t','\\',
                'C','r','y','p','t','o','g','r','a','p','h','y','\\',
                'D','e','f','a','u','l','t','s','\\',
                'P','r','o','v','i','d','e','r','\\',0
 };
 PWSTR keyname;

 keyname = CRYPT_Alloc((strlenW(KEYSTR) + strlenW(pProvName) +1)*sizeof(WCHAR));
 if (keyname)
 {
  strcpyW(keyname, KEYSTR);
  strcpyW(keyname + strlenW(KEYSTR), pProvName);
 } else
  SetLastError(ERROR_NOT_ENOUGH_MEMORY);
 return keyname;
}
