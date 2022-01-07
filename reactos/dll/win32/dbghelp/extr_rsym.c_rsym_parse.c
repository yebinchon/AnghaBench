
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sparse_array {int dummy; } ;
struct pool {int dummy; } ;
struct TYPE_6__ {char CVSig; void* Publics; void* SourceIndexed; void* TypeInfo; void* GlobalSymbols; void* LineNumbers; int SymType; } ;
struct module {TYPE_1__ module; } ;
struct TYPE_7__ {scalar_t__ Address; struct TYPE_7__* next; int func; } ;
typedef TYPE_2__ rsym_func_entry_t ;
struct TYPE_8__ {char const* File; int Source; } ;
typedef TYPE_3__ rsym_file_entry_t ;
typedef scalar_t__ ULONG ;
struct TYPE_10__ {scalar_t__ Address; int FileOffset; int FunctionOffset; int SourceLine; } ;
struct TYPE_9__ {int SymbolsOffset; int StringsOffset; int SymbolsLength; int StringsLength; } ;
typedef TYPE_4__ ROSSYM_HEADER ;
typedef TYPE_5__ ROSSYM_ENTRY ;
typedef char CHAR ;
typedef void* BOOL ;


 void* FALSE ;
 int SymDia ;
 void* TRUE ;
 int WARN (char*) ;
 int is_metadata_sym (char const*) ;
 int pool_destroy (struct pool*) ;
 int pool_init (struct pool*,int) ;
 int rsym_finalize_function (struct module*,int ) ;
 int source_new (struct module*,int *,char const*) ;
 void* sparse_array_add (struct sparse_array*,int,struct pool*) ;
 void* sparse_array_find (struct sparse_array*,int) ;
 int sparse_array_init (struct sparse_array*,int,int) ;
 int symt_add_func_line (struct module*,int ,int ,int ,scalar_t__) ;
 int symt_new_function (struct module*,int *,char const*,scalar_t__,int ,int *) ;
 int symt_new_public (struct module*,int *,char const*,void*,scalar_t__,scalar_t__) ;
 scalar_t__ use_raw_address (char const*) ;

BOOL rsym_parse(struct module* module, unsigned long load_offset,
                 const void* rsym_ptr, int rsymlen)
{
    const ROSSYM_HEADER* RosSymHeader;
    const ROSSYM_ENTRY* First, *Last, *Entry;
    const CHAR* Strings;

    struct pool pool;
    struct sparse_array file_table, func_table;
    rsym_func_entry_t* first_func = ((void*)0);


    RosSymHeader = rsym_ptr;

    if (RosSymHeader->SymbolsOffset < sizeof(ROSSYM_HEADER)
        || RosSymHeader->StringsOffset < RosSymHeader->SymbolsOffset + RosSymHeader->SymbolsLength
        || rsymlen < RosSymHeader->StringsOffset + RosSymHeader->StringsLength
        || 0 != (RosSymHeader->SymbolsLength % sizeof(ROSSYM_ENTRY)))
    {
        WARN("Invalid ROSSYM_HEADER\n");
        return FALSE;
    }

    First = (const ROSSYM_ENTRY *)((const char*)rsym_ptr + RosSymHeader->SymbolsOffset);
    Last = First + RosSymHeader->SymbolsLength / sizeof(ROSSYM_ENTRY);
    Strings = (const CHAR*)rsym_ptr + RosSymHeader->StringsOffset;

    pool_init(&pool, 65536);
    sparse_array_init(&file_table, sizeof(rsym_file_entry_t), 64);
    sparse_array_init(&func_table, sizeof(rsym_func_entry_t), 128);

    for (Entry = First; Entry != Last; Entry++)
    {
        ULONG Address = load_offset + Entry->Address;
        if (!Entry->FileOffset)
        {
            rsym_func_entry_t* func = sparse_array_find(&func_table, Entry->FunctionOffset);


            if (!func || func->Address != Address)
            {
                const char* SymbolName = Strings + Entry->FunctionOffset;
                if (!is_metadata_sym(SymbolName))
                {

                    ULONG Size = sizeof(ULONG);
                    if (use_raw_address(SymbolName))
                        Address = Entry->Address;

                    symt_new_public(module, ((void*)0), SymbolName, FALSE, Address, Size);
                }
                else
                {

                }
            }
        }
        else
        {
            rsym_file_entry_t* file = sparse_array_find(&file_table, Entry->FileOffset);
            rsym_func_entry_t* func = sparse_array_find(&func_table, Entry->FunctionOffset);

            if (!file)
            {
                file = sparse_array_add(&file_table, Entry->FileOffset, &pool);
                file->File = Strings + Entry->FileOffset;
                file->Source = source_new(module, ((void*)0), Strings + Entry->FileOffset);
            }

            if (!func)
            {
                func = sparse_array_add(&func_table, Entry->FunctionOffset, &pool);
                func->func = symt_new_function(module, ((void*)0), Strings + Entry->FunctionOffset,
                    Address, 0, ((void*)0));
                func->Address = Address;
                func->next = first_func;
                first_func = func;
            }


            symt_add_func_line(module, func->func, file->Source, Entry->SourceLine, Address - func->Address);
        }
    }

    while (first_func)
    {

        rsym_finalize_function(module, first_func->func);
        first_func = first_func->next;
    }

    module->module.SymType = SymDia;
    module->module.CVSig = 'R' | ('S' << 8) | ('Y' << 16) | ('M' << 24);
    module->module.LineNumbers = TRUE;
    module->module.GlobalSymbols = TRUE;
    module->module.TypeInfo = FALSE;
    module->module.SourceIndexed = TRUE;
    module->module.Publics = TRUE;

    pool_destroy(&pool);

    return TRUE;
}
