
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_enum {scalar_t__ buffer; scalar_t__ sym_info; scalar_t__ addr; scalar_t__ tag; scalar_t__ index; int user; int cb; } ;
typedef int ULONG64 ;
typedef int PVOID ;
typedef int PSYM_ENUMERATESYMBOLS_CALLBACK ;
typedef scalar_t__ PSYMBOL_INFO ;
typedef int PCWSTR ;
typedef int HANDLE ;
typedef int BOOL ;


 int sym_enum (int ,int ,int ,struct sym_enum*) ;

__attribute__((used)) static inline BOOL doSymEnumSymbols(HANDLE hProcess, ULONG64 BaseOfDll, PCWSTR Mask,
                                    PSYM_ENUMERATESYMBOLS_CALLBACK EnumSymbolsCallback,
                                    PVOID UserContext)
{
    struct sym_enum se;

    se.cb = EnumSymbolsCallback;
    se.user = UserContext;
    se.index = 0;
    se.tag = 0;
    se.addr = 0;
    se.sym_info = (PSYMBOL_INFO)se.buffer;

    return sym_enum(hProcess, BaseOfDll, Mask, &se);
}
