
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source_rb {unsigned int source; int entry; } ;
struct module {char* sources; int sources_used; int sources_alloc; int sources_offsets_tree; int pool; } ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,char*) ;
 char* HeapReAlloc (int ,int ,char*,int) ;
 unsigned int max (int,int) ;
 int memcpy (char*,char const*,int) ;
 struct source_rb* pool_alloc (int *,int) ;
 struct module* rb_module ;
 unsigned int source_find (char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int wine_rb_put (int *,char const*,int *) ;

unsigned source_new(struct module* module, const char* base, const char* name)
{
    unsigned ret = -1;
    const char* full;
    char* tmp = ((void*)0);

    if (!name) return ret;
    if (!base || *name == '/')
        full = name;
    else
    {
        unsigned bsz = strlen(base);

        tmp = HeapAlloc(GetProcessHeap(), 0, bsz + 1 + strlen(name) + 1);
        if (!tmp) return ret;
        full = tmp;
        strcpy(tmp, base);
        if (tmp[bsz - 1] != '/') tmp[bsz++] = '/';
        strcpy(&tmp[bsz], name);
    }
    rb_module = module;
    if (!module->sources || (ret = source_find(full)) == (unsigned)-1)
    {
        char* new;
        int len = strlen(full) + 1;
        struct source_rb* rb;

        if (module->sources_used + len + 1 > module->sources_alloc)
        {
            if (!module->sources)
            {
                module->sources_alloc = (module->sources_used + len + 1 + 255) & ~255;
                new = HeapAlloc(GetProcessHeap(), 0, module->sources_alloc);
            }
            else
            {
                module->sources_alloc = max( module->sources_alloc * 2,
                                             (module->sources_used + len + 1 + 255) & ~255 );
                new = HeapReAlloc(GetProcessHeap(), 0, module->sources,
                                  module->sources_alloc);
            }
            if (!new) goto done;
            module->sources = new;
        }
        ret = module->sources_used;
        memcpy(module->sources + module->sources_used, full, len);
        module->sources_used += len;
        module->sources[module->sources_used] = '\0';
        if ((rb = pool_alloc(&module->pool, sizeof(*rb))))
        {
            rb->source = ret;
            wine_rb_put(&module->sources_offsets_tree, full, &rb->entry);
        }
    }
done:
    HeapFree(GetProcessHeap(), 0, tmp);
    return ret;
}
