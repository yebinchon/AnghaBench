#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sparse_array {int dummy; } ;
struct pool {int dummy; } ;
struct TYPE_6__ {char CVSig; void* Publics; void* SourceIndexed; void* TypeInfo; void* GlobalSymbols; void* LineNumbers; int /*<<< orphan*/  SymType; } ;
struct module {TYPE_1__ module; } ;
struct TYPE_7__ {scalar_t__ Address; struct TYPE_7__* next; int /*<<< orphan*/  func; } ;
typedef  TYPE_2__ rsym_func_entry_t ;
struct TYPE_8__ {char const* File; int /*<<< orphan*/  Source; } ;
typedef  TYPE_3__ rsym_file_entry_t ;
typedef  scalar_t__ ULONG ;
struct TYPE_10__ {scalar_t__ Address; int FileOffset; int FunctionOffset; int /*<<< orphan*/  SourceLine; } ;
struct TYPE_9__ {int SymbolsOffset; int StringsOffset; int SymbolsLength; int StringsLength; } ;
typedef  TYPE_4__ ROSSYM_HEADER ;
typedef  TYPE_5__ ROSSYM_ENTRY ;
typedef  char CHAR ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  SymDia ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct pool*) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct module*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct module*,int /*<<< orphan*/ *,char const*) ; 
 void* FUNC6 (struct sparse_array*,int,struct pool*) ; 
 void* FUNC7 (struct sparse_array*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sparse_array*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct module*,int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct module*,int /*<<< orphan*/ *,char const*,void*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (char const*) ; 

BOOL FUNC13(struct module* module, unsigned long load_offset,
                 const void* rsym_ptr, int rsymlen)
{
    const ROSSYM_HEADER* RosSymHeader;
    const ROSSYM_ENTRY* First, *Last, *Entry;
    const CHAR* Strings;

    struct pool pool;
    struct sparse_array file_table, func_table;
    rsym_func_entry_t* first_func = NULL;


    RosSymHeader = rsym_ptr;

    if (RosSymHeader->SymbolsOffset < sizeof(ROSSYM_HEADER)
        || RosSymHeader->StringsOffset < RosSymHeader->SymbolsOffset + RosSymHeader->SymbolsLength
        || rsymlen < RosSymHeader->StringsOffset + RosSymHeader->StringsLength
        || 0 != (RosSymHeader->SymbolsLength % sizeof(ROSSYM_ENTRY)))
    {
        FUNC0("Invalid ROSSYM_HEADER\n");
        return FALSE;
    }

    First = (const ROSSYM_ENTRY *)((const char*)rsym_ptr + RosSymHeader->SymbolsOffset);
    Last = First + RosSymHeader->SymbolsLength / sizeof(ROSSYM_ENTRY);
    Strings = (const CHAR*)rsym_ptr + RosSymHeader->StringsOffset;

    FUNC3(&pool, 65536);
    FUNC8(&file_table, sizeof(rsym_file_entry_t), 64);
    FUNC8(&func_table, sizeof(rsym_func_entry_t), 128);

    for (Entry = First; Entry != Last; Entry++)
    {
        ULONG Address = load_offset + Entry->Address;
        if (!Entry->FileOffset)
        {
            rsym_func_entry_t* func = FUNC7(&func_table, Entry->FunctionOffset);

            /* We do not want to define a data point where there is already a function! */
            if (!func || func->Address != Address)
            {
                const char* SymbolName = Strings + Entry->FunctionOffset;
                if (!FUNC1(SymbolName))
                {
                    /* TODO: How should we determine the size? */
                    ULONG Size = sizeof(ULONG);
                    if (FUNC12(SymbolName))
                        Address = Entry->Address;

                    FUNC11(module, NULL, SymbolName, FALSE, Address, Size);
                }
                else
                {
                    /* Maybe use it to fill some metadata? */
                }
            }
        }
        else
        {
            rsym_file_entry_t* file = FUNC7(&file_table, Entry->FileOffset);
            rsym_func_entry_t* func = FUNC7(&func_table, Entry->FunctionOffset);

            if (!file)
            {
                file = FUNC6(&file_table, Entry->FileOffset, &pool);
                file->File = Strings + Entry->FileOffset;
                file->Source = FUNC5(module, NULL, Strings + Entry->FileOffset);
            }

            if (!func)
            {
                func = FUNC6(&func_table, Entry->FunctionOffset, &pool);
                func->func = FUNC10(module, NULL, Strings + Entry->FunctionOffset,
                    Address, 0, NULL);
                func->Address = Address;
                func->next = first_func;
                first_func = func;
            }

            /* TODO: What if we have multiple chunks scattered around? */
            FUNC9(module, func->func, file->Source, Entry->SourceLine, Address - func->Address);
        }
    }

    while (first_func)
    {
        /* TODO: Size of function? */
        FUNC4(module, first_func->func);
        first_func = first_func->next;
    }

    module->module.SymType = SymDia;
    module->module.CVSig = 'R' | ('S' << 8) | ('Y' << 16) | ('M' << 24);
    module->module.LineNumbers = TRUE;
    module->module.GlobalSymbols = TRUE;
    module->module.TypeInfo = FALSE;
    module->module.SourceIndexed = TRUE;
    module->module.Publics = TRUE;

    FUNC2(&pool);

    return TRUE;
}