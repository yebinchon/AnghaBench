
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int TRUE ;

__attribute__((used)) static BOOL CRYPT_CountSerializedBytes(void *handle, const void *buffer,
 DWORD size)
{
    *(DWORD *)handle += size;
    return TRUE;
}
