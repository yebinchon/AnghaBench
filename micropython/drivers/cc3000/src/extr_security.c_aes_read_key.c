
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int INT32 ;


 int AES128_KEY_SIZE ;
 int NVMEM_AES128_KEY_FILEID ;
 int nvmem_read (int ,int ,int ,int *) ;

INT32 aes_read_key(UINT8 *key)
{
 INT32 returnValue;

 returnValue = nvmem_read(NVMEM_AES128_KEY_FILEID, AES128_KEY_SIZE, 0, key);

 return returnValue;
}
