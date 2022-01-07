
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct X500TokenW {int end; int start; } ;
struct KeynameKeeper {int keyLen; char* keyName; } ;
typedef int WCHAR ;
typedef int DWORD ;


 int CRYPT_FreeKeynameKeeper (struct KeynameKeeper*) ;
 char* CryptMemAlloc (int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (char*) ;
 int memcpy (char*,int,int) ;

__attribute__((used)) static void CRYPT_KeynameKeeperFromTokenW(struct KeynameKeeper *keeper,
 const struct X500TokenW *key)
{
    DWORD len = key->end - key->start;

    if (len >= keeper->keyLen)
    {
        CRYPT_FreeKeynameKeeper( keeper );
        keeper->keyLen = len + 1;
        keeper->keyName = CryptMemAlloc(keeper->keyLen * sizeof(WCHAR));
    }
    memcpy(keeper->keyName, key->start, len * sizeof(WCHAR));
    keeper->keyName[len] = '\0';
    TRACE("Keyname is %s\n", debugstr_w(keeper->keyName));
}
