
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t NumberOfSections; } ;
struct TYPE_10__ {TYPE_2__ FileHeader; } ;
struct pe_file_map {TYPE_6__* sect; TYPE_3__ ntheader; } ;
struct image_section_map {size_t sidx; TYPE_7__* fmap; } ;
struct TYPE_8__ {struct pe_file_map pe; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
struct TYPE_11__ {scalar_t__ VirtualSize; } ;
struct TYPE_12__ {scalar_t__ SizeOfRawData; int VirtualAddress; TYPE_4__ Misc; } ;
struct TYPE_13__ {scalar_t__ mapped; TYPE_5__ shdr; } ;
typedef int IMAGE_NT_HEADERS ;


 int FIXME (char*,size_t,scalar_t__,scalar_t__) ;
 scalar_t__ IMAGE_NO_MAP ;
 scalar_t__ RtlImageRvaToVa (int *,void*,int ,int *) ;
 void* pe_map_full (TYPE_7__*,int **) ;

const char* pe_map_section(struct image_section_map* ism)
{
    void* mapping;
    struct pe_file_map* fmap = &ism->fmap->u.pe;

    if (ism->sidx >= 0 && ism->sidx < fmap->ntheader.FileHeader.NumberOfSections &&
        fmap->sect[ism->sidx].mapped == IMAGE_NO_MAP)
    {
        IMAGE_NT_HEADERS* nth;

        if (fmap->sect[ism->sidx].shdr.Misc.VirtualSize > fmap->sect[ism->sidx].shdr.SizeOfRawData)
        {
            FIXME("Section %ld: virtual (0x%x) > raw (0x%x) size - not supported\n",
                  ism->sidx, fmap->sect[ism->sidx].shdr.Misc.VirtualSize,
                  fmap->sect[ism->sidx].shdr.SizeOfRawData);
            return IMAGE_NO_MAP;
        }




        if ((mapping = pe_map_full(ism->fmap, &nth)))
        {
            fmap->sect[ism->sidx].mapped = RtlImageRvaToVa(nth, mapping,
                                                           fmap->sect[ism->sidx].shdr.VirtualAddress,
                                                           ((void*)0));
            return fmap->sect[ism->sidx].mapped;
        }
    }
    return IMAGE_NO_MAP;
}
