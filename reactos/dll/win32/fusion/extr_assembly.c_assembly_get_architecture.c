
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* corhdr; TYPE_2__* nthdr; } ;
struct TYPE_8__ {int MajorRuntimeVersion; scalar_t__ MinorRuntimeVersion; int Flags; } ;
struct TYPE_6__ {scalar_t__ Magic; } ;
struct TYPE_7__ {TYPE_1__ OptionalHeader; } ;
typedef int PEKIND ;
typedef TYPE_4__ ASSEMBLY ;


 int COMIMAGE_FLAGS_32BITREQUIRED ;
 int COMIMAGE_FLAGS_ILONLY ;
 scalar_t__ IMAGE_NT_OPTIONAL_HDR64_MAGIC ;
 int peAMD64 ;
 int peI386 ;
 int peMSIL ;
 int peNone ;

PEKIND assembly_get_architecture(ASSEMBLY *assembly)
{
    if ((assembly->corhdr->MajorRuntimeVersion == 2) && (assembly->corhdr->MinorRuntimeVersion == 0))
        return peNone;

    if (assembly->nthdr->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC)
        return peAMD64;

    if ((assembly->corhdr->Flags & COMIMAGE_FLAGS_ILONLY) && !(assembly->corhdr->Flags & COMIMAGE_FLAGS_32BITREQUIRED))
        return peMSIL;

    return peI386;
}
