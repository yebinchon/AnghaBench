
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int SHAMD5DataWriteMultiple (int *,int ) ;

void CRYPTOHASH_SHAMD5Update (uint8_t *data, uint32_t datalen) {

    SHAMD5DataWriteMultiple(data, datalen);
}
