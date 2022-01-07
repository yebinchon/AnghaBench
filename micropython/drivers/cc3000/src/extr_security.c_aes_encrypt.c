
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int aes_encr (int *,int ) ;
 int expandKey (int ,int *) ;
 int expandedKey ;

void aes_encrypt(UINT8 *state, UINT8 *key)
{

 expandKey(expandedKey, key);
 aes_encr(state, expandedKey);
}
