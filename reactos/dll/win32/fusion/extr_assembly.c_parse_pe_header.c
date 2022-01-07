
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ Magic; } ;
struct TYPE_14__ {TYPE_1__ OptionalHeader; } ;
struct TYPE_13__ {int corhdr; int data; TYPE_7__* nthdr; } ;
struct TYPE_12__ {int VirtualAddress; int Size; } ;
struct TYPE_11__ {TYPE_4__* DataDirectory; } ;
struct TYPE_10__ {TYPE_4__* DataDirectory; } ;
typedef TYPE_2__ IMAGE_OPTIONAL_HEADER64 ;
typedef TYPE_3__ IMAGE_OPTIONAL_HEADER32 ;
typedef TYPE_4__ IMAGE_DATA_DIRECTORY ;
typedef int HRESULT ;
typedef TYPE_5__ ASSEMBLY ;


 int E_FAIL ;
 size_t IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR ;
 scalar_t__ IMAGE_NT_OPTIONAL_HDR64_MAGIC ;
 TYPE_7__* ImageNtHeader (int ) ;
 int ImageRvaToVa (TYPE_7__*,int ,int ,int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT parse_pe_header(ASSEMBLY *assembly)
{
    IMAGE_DATA_DIRECTORY *datadirs;

    assembly->nthdr = ImageNtHeader(assembly->data);
    if (!assembly->nthdr)
        return E_FAIL;

    if (assembly->nthdr->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC)
    {
        IMAGE_OPTIONAL_HEADER64 *opthdr =
                (IMAGE_OPTIONAL_HEADER64 *)&assembly->nthdr->OptionalHeader;
        datadirs = opthdr->DataDirectory;
    }
    else
    {
        IMAGE_OPTIONAL_HEADER32 *opthdr =
                (IMAGE_OPTIONAL_HEADER32 *)&assembly->nthdr->OptionalHeader;
        datadirs = opthdr->DataDirectory;
    }

    if (!datadirs)
        return E_FAIL;

    if (!datadirs[IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR].VirtualAddress ||
        !datadirs[IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR].Size)
    {
        return E_FAIL;
    }

    assembly->corhdr = ImageRvaToVa(assembly->nthdr, assembly->data,
        datadirs[IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR].VirtualAddress, ((void*)0));
    if (!assembly->corhdr)
        return E_FAIL;

    return S_OK;
}
