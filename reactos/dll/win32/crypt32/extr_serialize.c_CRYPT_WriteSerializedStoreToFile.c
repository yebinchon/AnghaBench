
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCERTSTORE ;
typedef int HANDLE ;
typedef int BOOL ;


 int CRYPT_FileOutputFunc ;
 int CRYPT_WriteSerializedStoreToStream (int ,int ,int ) ;
 int FILE_BEGIN ;
 int SetFilePointer (int ,int ,int *,int ) ;

__attribute__((used)) static BOOL CRYPT_WriteSerializedStoreToFile(HANDLE file, HCERTSTORE store)
{
    SetFilePointer(file, 0, ((void*)0), FILE_BEGIN);
    return CRYPT_WriteSerializedStoreToStream(store, CRYPT_FileOutputFunc,
     file);
}
