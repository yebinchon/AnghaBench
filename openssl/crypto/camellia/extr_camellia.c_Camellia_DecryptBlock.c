
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int KEY_TABLE_TYPE ;


 int Camellia_DecryptBlock_Rounds (int,int const*,int const,int *) ;

void Camellia_DecryptBlock(int keyBitLength, const u8 plaintext[],
                           const KEY_TABLE_TYPE keyTable, u8 ciphertext[])
{
    Camellia_DecryptBlock_Rounds(keyBitLength == 128 ? 3 : 4,
                                 plaintext, keyTable, ciphertext);
}
