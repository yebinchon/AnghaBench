
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int CheckSum; } ;
struct TYPE_10__ {TYPE_1__ OptionalHeader; } ;
struct TYPE_8__ {int CheckSum; } ;
struct TYPE_9__ {TYPE_2__ OptionalHeader; } ;
typedef int LPVOID ;
typedef TYPE_3__ IMAGE_NT_HEADERS64 ;
typedef TYPE_4__ IMAGE_NT_HEADERS32 ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CheckSumMappedFile (int ,int,int*,int*) ;
 int CloseHandle (int ) ;
 int CreateFileMappingW (int ,int *,int ,int ,int ,int *) ;
 int FALSE ;
 int FILE_BEGIN ;
 int FILE_MAP_READ ;
 int GetFileSize (int ,int *) ;
 int HDR_NT32 ;
 int HDR_NT64 ;
 int IMAGEHLP_GetNTHeaders (int ,int*,TYPE_4__*,TYPE_3__*) ;
 int INVALID_SET_FILE_POINTER ;
 int MapViewOfFile (int ,int ,int ,int ,int ) ;
 int PAGE_READONLY ;
 int SetFilePointer (int ,int,int *,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int UnmapViewOfFile (int ) ;
 int WriteFile (int ,void*,int,int*,int *) ;

__attribute__((used)) static BOOL IMAGEHLP_RecalculateChecksum(HANDLE handle)
{
    DWORD FileLength, count, HeaderSum, pe_offset, nt_hdr_size;
    IMAGE_NT_HEADERS32 nt_hdr32;
    IMAGE_NT_HEADERS64 nt_hdr64;
    LPVOID BaseAddress;
    HANDLE hMapping;
    DWORD *CheckSum;
    void *nt_hdr;
    int ret;
    BOOL r;

    TRACE("handle %p\n", handle);

    ret = IMAGEHLP_GetNTHeaders(handle, &pe_offset, &nt_hdr32, &nt_hdr64);

    if (ret == HDR_NT32)
    {
        CheckSum = &nt_hdr32.OptionalHeader.CheckSum;

        nt_hdr = &nt_hdr32;
        nt_hdr_size = sizeof(IMAGE_NT_HEADERS32);
    }
    else if (ret == HDR_NT64)
    {
        CheckSum = &nt_hdr64.OptionalHeader.CheckSum;

        nt_hdr = &nt_hdr64;
        nt_hdr_size = sizeof(IMAGE_NT_HEADERS64);
    }
    else
        return FALSE;

    hMapping = CreateFileMappingW(handle, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));

    if (!hMapping)
        return FALSE;

    BaseAddress = MapViewOfFile(hMapping, FILE_MAP_READ, 0, 0, 0);

    if (!BaseAddress)
    {
        CloseHandle(hMapping);
        return FALSE;
    }

    FileLength = GetFileSize(handle, ((void*)0));

    *CheckSum = 0;
    CheckSumMappedFile(BaseAddress, FileLength, &HeaderSum, CheckSum);

    UnmapViewOfFile(BaseAddress);
    CloseHandle(hMapping);

    if (*CheckSum)
    {

        count = SetFilePointer(handle, pe_offset, ((void*)0), FILE_BEGIN);

        if (count == INVALID_SET_FILE_POINTER)
            return FALSE;

        count = 0;

        r = WriteFile(handle, nt_hdr, nt_hdr_size, &count, ((void*)0));

        if (!r)
            return FALSE;

        if (count != nt_hdr_size)
            return FALSE;

        return TRUE;
    }

    return FALSE;
}
