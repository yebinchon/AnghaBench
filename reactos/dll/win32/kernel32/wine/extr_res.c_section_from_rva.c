
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int VirtualAddress; int SizeOfRawData; } ;
typedef TYPE_1__ IMAGE_SECTION_HEADER ;
typedef int DWORD ;


 TYPE_1__* get_section_header (void*,int,int*) ;

__attribute__((used)) static const IMAGE_SECTION_HEADER *section_from_rva( void *base, DWORD mapping_size, DWORD rva )
{
    const IMAGE_SECTION_HEADER *sec;
    DWORD num_sections = 0;
    int i;

    sec = get_section_header( base, mapping_size, &num_sections );
    if (!sec)
        return ((void*)0);

    for (i=num_sections-1; i>=0; i--)
    {
        if (sec[i].VirtualAddress <= rva &&
            rva <= (DWORD)sec[i].VirtualAddress + sec[i].SizeOfRawData)
        {
            return &sec[i];
        }
    }

    return ((void*)0);
}
