
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 char const* S_DotSoW ;
 int S_ElfW ;
 int S_WineLoaderW ;
 char* get_filename (char const*,char const*) ;
 char* get_wine_loader_name () ;
 int lstrcpynW (char*,int ,size_t) ;
 size_t match_ext (char*,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t min (int,size_t) ;
 int strcmpiW (char*,char const*) ;
 int strcpyW (char*,int ) ;
 size_t strlenW (char const*) ;
 char tolowerW (char) ;

__attribute__((used)) static void module_fill_module(const WCHAR* in, WCHAR* out, size_t size)
{
    const WCHAR *loader = get_wine_loader_name();
    const WCHAR *ptr, *endptr;
    size_t len, l;

    ptr = get_filename(in, endptr = in + strlenW(in));
    len = min(endptr - ptr, size - 1);
    memcpy(out, ptr, len * sizeof(WCHAR));
    out[len] = '\0';
    if (len > 4 && (l = match_ext(out, len)))
        out[len - l] = '\0';
    else if (len > strlenW(loader) && !strcmpiW(out + len - strlenW(loader), loader))
        lstrcpynW(out, S_WineLoaderW, size);
    else
    {
        if (len > 3 && !strcmpiW(&out[len - 3], S_DotSoW) &&
            (l = match_ext(out, len - 3)))
            strcpyW(&out[len - l - 3], S_ElfW);
    }
    while ((*out = tolowerW(*out))) out++;
}
