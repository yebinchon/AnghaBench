
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Name; } ;
typedef TYPE_1__ IMAGE_SECTION_HEADER ;
typedef int IMAGE_NT_HEADERS ;
typedef size_t DWORD ;


 int * get_nt_header (void*,size_t) ;
 TYPE_1__* get_section_header (void*,size_t,size_t*) ;
 int memcmp (int ,char*,int) ;

__attribute__((used)) static IMAGE_SECTION_HEADER *get_resource_section( void *base, DWORD mapping_size )
{
    IMAGE_SECTION_HEADER *sec;
    IMAGE_NT_HEADERS *nt;
    DWORD i, num_sections = 0;

    nt = get_nt_header( base, mapping_size );
    if (!nt)
        return ((void*)0);

    sec = get_section_header( base, mapping_size, &num_sections );
    if (!sec)
        return ((void*)0);


    for (i=0; i<num_sections; i++)
        if (!memcmp(sec[i].Name, ".rsrc", 6))
            break;

    if (i == num_sections)
        return ((void*)0);

    return &sec[i];
}
