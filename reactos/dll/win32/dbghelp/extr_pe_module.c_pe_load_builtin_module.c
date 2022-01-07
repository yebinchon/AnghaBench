
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct process {int handle; scalar_t__ dbg_hdr_addr; } ;
struct module {int dummy; } ;
typedef int WCHAR ;
struct TYPE_5__ {int CheckSum; scalar_t__ SizeOfImage; } ;
struct TYPE_6__ {int TimeDateStamp; } ;
struct TYPE_7__ {TYPE_1__ OptionalHeader; TYPE_2__ FileHeader; } ;
typedef TYPE_3__ IMAGE_NT_HEADERS ;
typedef scalar_t__ DWORD64 ;


 int DMT_PE ;
 int FALSE ;
 struct module* module_new (struct process*,int const*,int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ pe_load_nt_header (int ,scalar_t__,TYPE_3__*) ;

struct module* pe_load_builtin_module(struct process* pcs, const WCHAR* name,
                                      DWORD64 base, DWORD64 size)
{
    struct module* module = ((void*)0);

    if (base && pcs->dbg_hdr_addr)
    {
        IMAGE_NT_HEADERS nth;

        if (pe_load_nt_header(pcs->handle, base, &nth))
        {
            if (!size) size = nth.OptionalHeader.SizeOfImage;
            module = module_new(pcs, name, DMT_PE, FALSE, base, size,
                                nth.FileHeader.TimeDateStamp,
                                nth.OptionalHeader.CheckSum);
        }
    }
    return module;
}
