
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {scalar_t__ key; char* long_name; } ;
typedef scalar_t__ HKEY ;
typedef size_t DWORD ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 char* heap_xalloc (size_t) ;
 TYPE_1__* root_rels ;
 int sprintfW (char*,char*,char*,char*) ;
 int strcpyW (char*,char*) ;
 size_t strlenW (char*) ;

__attribute__((used)) static WCHAR *get_long_key(HKEY root, WCHAR *path)
{
    DWORD i, array_size = ARRAY_SIZE(root_rels), len;
    WCHAR *long_key;
    WCHAR fmt[] = {'%','s','\\','%','s',0};

    for (i = 0; i < array_size; i++)
    {
        if (root == root_rels[i].key)
            break;
    }

    len = strlenW(root_rels[i].long_name);

    if (!path)
    {
        long_key = heap_xalloc((len + 1) * sizeof(WCHAR));
        strcpyW(long_key, root_rels[i].long_name);
        return long_key;
    }

    len += strlenW(path) + 1;
    long_key = heap_xalloc((len + 1) * sizeof(WCHAR));
    sprintfW(long_key, fmt, root_rels[i].long_name, path);
    return long_key;
}
