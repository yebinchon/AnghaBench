
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dxbc_section {int tag; int data_size; char const* data; } ;
struct dxbc {size_t count; size_t size; struct dxbc_section* sections; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 struct dxbc_section* HeapReAlloc (int ,int ,struct dxbc_section*,int) ;
 int S_OK ;
 int TRACE (char*,struct dxbc*,int ,int) ;
 int debugstr_an (char const*,int) ;

HRESULT dxbc_add_section(struct dxbc *dxbc, DWORD tag, const char *data, DWORD data_size)
{
    TRACE("dxbc %p, tag %s, size %#x.\n", dxbc, debugstr_an((const char *)&tag, 4), data_size);

    if (dxbc->count >= dxbc->size)
    {
        struct dxbc_section *new_sections;
        DWORD new_size = dxbc->size << 1;

        new_sections = HeapReAlloc(GetProcessHeap(), 0, dxbc->sections, new_size * sizeof(*dxbc->sections));
        if (!new_sections)
        {
            ERR("Failed to allocate dxbc section memory\n");
            return E_OUTOFMEMORY;
        }

        dxbc->sections = new_sections;
        dxbc->size = new_size;
    }

    dxbc->sections[dxbc->count].tag = tag;
    dxbc->sections[dxbc->count].data_size = data_size;
    dxbc->sections[dxbc->count].data = data;
    ++dxbc->count;

    return S_OK;
}
