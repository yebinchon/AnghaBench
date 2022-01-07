
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 char** HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char const**) ;
 char** HeapReAlloc (int ,int ,char const**,unsigned int) ;
 unsigned int INITIAL_CONST_NAMES_SIZE ;
 char* next_valid_constant_name (char**) ;

__attribute__((used)) static const char **parse_skip_constants_string(char *skip_constants_string, unsigned int *names_count)
{
    const char **names, **new_alloc;
    const char *name;
    char *s;
    unsigned int size = INITIAL_CONST_NAMES_SIZE;

    names = HeapAlloc(GetProcessHeap(), 0, sizeof(*names) * size);
    if (!names)
        return ((void*)0);

    *names_count = 0;
    s = skip_constants_string;
    while ((name = next_valid_constant_name(&s)))
    {
        if (*names_count == size)
        {
            size *= 2;
            new_alloc = HeapReAlloc(GetProcessHeap(), 0, names, sizeof(*names) * size);
            if (!new_alloc)
            {
                HeapFree(GetProcessHeap(), 0, names);
                return ((void*)0);
            }
            names = new_alloc;
        }
        names[(*names_count)++] = name;
    }
    new_alloc = HeapReAlloc(GetProcessHeap(), 0, names, *names_count * sizeof(*names));
    if (!new_alloc)
        return names;
    return new_alloc;
}
