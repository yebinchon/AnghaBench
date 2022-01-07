
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int * hkey; int key_name; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int KEY_ALL_ACCESS ;
 int REG_OPTION_NON_VOLATILE ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int ,int *,int **,int *) ;
 int close_key (struct parser*) ;
 int heap_xalloc (int) ;
 int lstrcpyW (int ,int *) ;
 int lstrlenW (int *) ;
 int parse_key_name (int *,int **) ;

__attribute__((used)) static LONG open_key(struct parser *parser, WCHAR *path)
{
    HKEY key_class;
    WCHAR *key_path;
    LONG res;

    close_key(parser);


    if (!path || !(key_class = parse_key_name(path, &key_path)))
        return ERROR_INVALID_PARAMETER;

    res = RegCreateKeyExW(key_class, key_path, 0, ((void*)0), REG_OPTION_NON_VOLATILE,
                          KEY_ALL_ACCESS, ((void*)0), &parser->hkey, ((void*)0));

    if (res == ERROR_SUCCESS)
    {
        parser->key_name = heap_xalloc((lstrlenW(path) + 1) * sizeof(WCHAR));
        lstrcpyW(parser->key_name, path);
    }
    else
        parser->hkey = ((void*)0);

    return res;
}
