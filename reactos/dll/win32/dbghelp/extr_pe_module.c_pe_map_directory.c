
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct module {scalar_t__ type; TYPE_5__** format_info; } ;
struct TYPE_12__ {TYPE_3__* DataDirectory; } ;
struct TYPE_14__ {TYPE_4__ OptionalHeader; } ;
struct TYPE_10__ {TYPE_1__* pe_info; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
struct TYPE_11__ {int VirtualAddress; int Size; } ;
struct TYPE_9__ {int fmap; } ;
typedef TYPE_6__ IMAGE_NT_HEADERS ;
typedef int DWORD ;


 size_t DFI_PE ;
 scalar_t__ DMT_PE ;
 int IMAGE_NUMBEROF_DIRECTORY_ENTRIES ;
 char const* RtlImageRvaToVa (TYPE_6__*,void*,int ,int *) ;
 void* pe_map_full (int *,TYPE_6__**) ;

const char* pe_map_directory(struct module* module, int dirno, DWORD* size)
{
    IMAGE_NT_HEADERS* nth;
    void* mapping;

    if (module->type != DMT_PE || !module->format_info[DFI_PE]) return ((void*)0);
    if (dirno >= IMAGE_NUMBEROF_DIRECTORY_ENTRIES ||
        !(mapping = pe_map_full(&module->format_info[DFI_PE]->u.pe_info->fmap, &nth)))
        return ((void*)0);
    if (size) *size = nth->OptionalHeader.DataDirectory[dirno].Size;
    return RtlImageRvaToVa(nth, mapping,
                           nth->OptionalHeader.DataDirectory[dirno].VirtualAddress, ((void*)0));
}
