
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct KeynameKeeper {int buf; int keyLen; int keyName; } ;


 int ARRAY_SIZE (int ) ;

__attribute__((used)) static void CRYPT_InitializeKeynameKeeper(struct KeynameKeeper *keeper)
{
    keeper->keyName = keeper->buf;
    keeper->keyLen = ARRAY_SIZE(keeper->buf);
}
