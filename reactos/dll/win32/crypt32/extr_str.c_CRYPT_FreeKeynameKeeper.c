
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct KeynameKeeper {scalar_t__ keyName; scalar_t__ buf; } ;


 int CryptMemFree (scalar_t__) ;

__attribute__((used)) static void CRYPT_FreeKeynameKeeper(struct KeynameKeeper *keeper)
{
    if (keeper->keyName != keeper->buf)
        CryptMemFree(keeper->keyName);
}
