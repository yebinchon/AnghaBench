
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int subnet ;
typedef int mask ;
typedef int addr ;
struct TYPE_4__ {int cbData; int* pbData; } ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 int CERT_TRUST_INVALID_NAME_CONSTRAINTS ;
 int FALSE ;
 int TRACE (char*,int,int*,int,int*) ;
 int TRUE ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static BOOL ip_address_matches(const CRYPT_DATA_BLOB *constraint,
 const CRYPT_DATA_BLOB *name, DWORD *trustErrorStatus)
{
    BOOL match = FALSE;

    TRACE("(%d, %p), (%d, %p)\n", constraint->cbData, constraint->pbData,
     name->cbData, name->pbData);




    if (constraint->cbData != sizeof(DWORD) * 2 && constraint->cbData != 32)
        *trustErrorStatus |= CERT_TRUST_INVALID_NAME_CONSTRAINTS;
    else if (name->cbData == sizeof(DWORD) &&
     constraint->cbData == sizeof(DWORD) * 2)
    {
        DWORD subnet, mask, addr;

        memcpy(&subnet, constraint->pbData, sizeof(subnet));
        memcpy(&mask, constraint->pbData + sizeof(subnet), sizeof(mask));
        memcpy(&addr, name->pbData, sizeof(addr));



        match = (subnet & mask) == (addr & mask);
    }
    else if (name->cbData == 16 && constraint->cbData == 32)
    {
        const BYTE *subnet, *mask, *addr;
        DWORD i;

        subnet = constraint->pbData;
        mask = constraint->pbData + 16;
        addr = name->pbData;
        match = TRUE;
        for (i = 0; match && i < 16; i++)
            if ((subnet[i] & mask[i]) != (addr[i] & mask[i]))
                match = FALSE;
    }


    return match;
}
