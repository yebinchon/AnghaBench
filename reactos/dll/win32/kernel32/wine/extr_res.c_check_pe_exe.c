
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int Size; int VirtualAddress; } ;
struct TYPE_6__ {scalar_t__ Magic; TYPE_5__* DataDirectory; } ;
struct TYPE_9__ {TYPE_1__ OptionalHeader; } ;
struct TYPE_7__ {TYPE_5__* DataDirectory; } ;
struct TYPE_8__ {TYPE_2__ OptionalHeader; } ;
typedef int QUEUEDUPDATES ;
typedef int IMAGE_SECTION_HEADER ;
typedef TYPE_3__ IMAGE_NT_HEADERS64 ;
typedef TYPE_4__ IMAGE_NT_HEADERS32 ;
typedef TYPE_5__ IMAGE_DATA_DIRECTORY ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileMappingW (scalar_t__,int *,int ,int ,int ,int *) ;
 int FALSE ;
 int FILE_MAP_READ ;
 int GetFileSize (scalar_t__,int *) ;
 size_t IMAGE_DIRECTORY_ENTRY_RESOURCE ;
 scalar_t__ IMAGE_NT_OPTIONAL_HDR64_MAGIC ;
 void* MapViewOfFile (scalar_t__,int ,int ,int ,int ) ;
 int PAGE_READONLY ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int UnmapViewOfFile (void*) ;
 scalar_t__ get_nt_header (void*,int ) ;
 int * get_section_header (void*,int ,int *) ;

__attribute__((used)) static BOOL check_pe_exe( HANDLE file, QUEUEDUPDATES *updates )
{
    const IMAGE_NT_HEADERS32 *nt;
    const IMAGE_NT_HEADERS64 *nt64;
    const IMAGE_SECTION_HEADER *sec;
    const IMAGE_DATA_DIRECTORY *dd;
    BOOL ret = FALSE;
    HANDLE mapping;
    DWORD mapping_size, num_sections = 0;
    void *base = ((void*)0);

    mapping_size = GetFileSize( file, ((void*)0) );

    mapping = CreateFileMappingW( file, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0) );
    if (!mapping)
        goto done;

    base = MapViewOfFile( mapping, FILE_MAP_READ, 0, 0, mapping_size );
    if (!base)
        goto done;

    nt = (IMAGE_NT_HEADERS32 *)get_nt_header( base, mapping_size );
    if (!nt)
        goto done;

    nt64 = (IMAGE_NT_HEADERS64*)nt;
    dd = &nt->OptionalHeader.DataDirectory[0];
    if (nt->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC)
        dd = &nt64->OptionalHeader.DataDirectory[0];

    TRACE("resources: %08x %08x\n",
          dd[IMAGE_DIRECTORY_ENTRY_RESOURCE].VirtualAddress,
          dd[IMAGE_DIRECTORY_ENTRY_RESOURCE].Size);

    sec = get_section_header( base, mapping_size, &num_sections );
    if (!sec)
        goto done;

    ret = TRUE;

done:
    if (base)
        UnmapViewOfFile( base );
    if (mapping)
        CloseHandle( mapping );

    return ret;
}
