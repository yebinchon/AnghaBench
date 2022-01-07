
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Magic; } ;
struct TYPE_9__ {scalar_t__ e_magic; int e_lfanew; scalar_t__ Signature; TYPE_1__ OptionalHeader; } ;
typedef TYPE_2__ IMAGE_NT_HEADERS64 ;
typedef TYPE_2__ IMAGE_NT_HEADERS32 ;
typedef TYPE_2__ IMAGE_DOS_HEADER ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int FILE_BEGIN ;
 int HDR_FAIL ;
 int HDR_NT32 ;
 int HDR_NT64 ;
 scalar_t__ IMAGE_DOS_SIGNATURE ;


 scalar_t__ IMAGE_NT_SIGNATURE ;
 int INVALID_SET_FILE_POINTER ;
 scalar_t__ ReadFile (int ,TYPE_2__*,int,int*,int *) ;
 int SetFilePointer (int ,int,int *,int ) ;
 int TRACE (char*,int ) ;

__attribute__((used)) static int IMAGEHLP_GetNTHeaders(HANDLE handle, DWORD *pe_offset, IMAGE_NT_HEADERS32 *nt32, IMAGE_NT_HEADERS64 *nt64)
{
    IMAGE_DOS_HEADER dos_hdr;
    DWORD count;
    BOOL r;

    TRACE("handle %p\n", handle);

    if ((!nt32) || (!nt64))
        return HDR_FAIL;


    count = SetFilePointer(handle, 0, ((void*)0), FILE_BEGIN);

    if (count == INVALID_SET_FILE_POINTER)
        return HDR_FAIL;

    count = 0;

    r = ReadFile(handle, &dos_hdr, sizeof dos_hdr, &count, ((void*)0));

    if (!r)
        return HDR_FAIL;

    if (count != sizeof dos_hdr)
        return HDR_FAIL;


    if (dos_hdr.e_magic != IMAGE_DOS_SIGNATURE)
        return HDR_FAIL;

    if (pe_offset != ((void*)0))
        *pe_offset = dos_hdr.e_lfanew;


    count = SetFilePointer(handle, dos_hdr.e_lfanew, ((void*)0), FILE_BEGIN);

    if (count == INVALID_SET_FILE_POINTER)
        return HDR_FAIL;

    count = 0;

    r = ReadFile(handle, nt32, sizeof(IMAGE_NT_HEADERS32), &count, ((void*)0));

    if (!r)
        return HDR_FAIL;

    if (count != sizeof(IMAGE_NT_HEADERS32))
        return HDR_FAIL;


    if (nt32->Signature != IMAGE_NT_SIGNATURE)
        return HDR_FAIL;


    switch (nt32->OptionalHeader.Magic)
    {
        case 129:
            return HDR_NT32;

        case 128:


            count = SetFilePointer(handle, dos_hdr.e_lfanew, ((void*)0), FILE_BEGIN);

            if (count == INVALID_SET_FILE_POINTER)
                return HDR_FAIL;

            count = 0;

            r = ReadFile(handle, nt64, sizeof(IMAGE_NT_HEADERS64), &count, ((void*)0));

            if (!r)
                return HDR_FAIL;

            if (count != sizeof(IMAGE_NT_HEADERS64))
                return HDR_FAIL;


            if (nt64->Signature != IMAGE_NT_SIGNATURE)
                return HDR_FAIL;

            return HDR_NT64;
    }

    return HDR_FAIL;
}
