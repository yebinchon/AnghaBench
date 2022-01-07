
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t PointerToRawData; int SizeOfRawData; int Name; } ;
typedef int QUEUEDUPDATES ;
typedef TYPE_1__ IMAGE_SECTION_HEADER ;
typedef int IMAGE_RESOURCE_DIRECTORY ;
typedef int IMAGE_NT_HEADERS ;
typedef size_t DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,size_t,int) ;
 int TRUE ;
 int enumerate_mapped_resources (int *,void*,size_t,int const*) ;
 int * get_nt_header (void*,size_t) ;
 TYPE_1__* get_section_header (void*,size_t,size_t*) ;
 int memcmp (int ,char*,int) ;

__attribute__((used)) static BOOL read_mapped_resources( QUEUEDUPDATES *updates, void *base, DWORD mapping_size )
{
    const IMAGE_RESOURCE_DIRECTORY *root;
    const IMAGE_NT_HEADERS *nt;
    const IMAGE_SECTION_HEADER *sec;
    DWORD num_sections = 0, i;

    nt = get_nt_header( base, mapping_size );
    if (!nt)
        return FALSE;

    sec = get_section_header( base, mapping_size, &num_sections );
    if (!sec)
        return FALSE;

    for (i=0; i<num_sections; i++)
        if (!memcmp(sec[i].Name, ".rsrc", 6))
            break;

    if (i == num_sections)
        return TRUE;


    if (sec[i].PointerToRawData > mapping_size ||
        (sec[i].PointerToRawData + sec[i].SizeOfRawData) > mapping_size)
        return TRUE;

    TRACE("found .rsrc at %08x, size %08x\n", sec[i].PointerToRawData, sec[i].SizeOfRawData);

    if (!sec[i].PointerToRawData || sec[i].SizeOfRawData < sizeof(IMAGE_RESOURCE_DIRECTORY))
        return TRUE;

    root = (void*) ((BYTE*)base + sec[i].PointerToRawData);
    enumerate_mapped_resources( updates, base, mapping_size, root );

    return TRUE;
}
