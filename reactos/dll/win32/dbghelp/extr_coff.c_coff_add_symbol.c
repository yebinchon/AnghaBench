
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;
struct CoffFile {int neps; int neps_alloc; struct symt** entries; } ;


 int GetProcessHeap () ;
 struct symt** HeapAlloc (int ,int ,int) ;
 struct symt** HeapReAlloc (int ,int ,struct symt**,int) ;

__attribute__((used)) static void coff_add_symbol(struct CoffFile* coff_file, struct symt* sym)
{
    if (coff_file->neps + 1 >= coff_file->neps_alloc)
    {
        if (coff_file->entries)
        {
            coff_file->neps_alloc *= 2;
            coff_file->entries = HeapReAlloc(GetProcessHeap(), 0, coff_file->entries,
                                             coff_file->neps_alloc * sizeof(struct symt*));
        }
        else
        {
            coff_file->neps_alloc = 32;
            coff_file->entries = HeapAlloc(GetProcessHeap(), 0,
                                           coff_file->neps_alloc * sizeof(struct symt*));
        }
    }
    coff_file->entries[coff_file->neps++] = sym;
}
