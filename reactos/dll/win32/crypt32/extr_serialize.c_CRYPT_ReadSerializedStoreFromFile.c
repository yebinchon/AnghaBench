
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCERTSTORE ;
typedef int HANDLE ;
typedef int BOOL ;


 int CRYPT_ReadSerializedStore (int ,int ,int ) ;
 int read_file_wrapper ;

BOOL CRYPT_ReadSerializedStoreFromFile(HANDLE file, HCERTSTORE store)
{
    return CRYPT_ReadSerializedStore(file, read_file_wrapper, store);
}
