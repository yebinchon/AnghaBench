
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static WCHAR* file_regex(const char* srcfile)
{
    WCHAR* mask;
    WCHAR* p;

    if (!srcfile || !*srcfile)
    {
        if (!(p = mask = HeapAlloc(GetProcessHeap(), 0, 3 * sizeof(WCHAR)))) return ((void*)0);
        *p++ = '?';
        *p++ = '#';
    }
    else
    {
        DWORD sz = MultiByteToWideChar(CP_ACP, 0, srcfile, -1, ((void*)0), 0);
        WCHAR* srcfileW;


        p = mask = HeapAlloc(GetProcessHeap(), 0, (5 * strlen(srcfile) + 1 + sz) * sizeof(WCHAR));
        if (!mask) return ((void*)0);
        srcfileW = mask + 5 * strlen(srcfile) + 1;
        MultiByteToWideChar(CP_ACP, 0, srcfile, -1, srcfileW, sz);

        while (*srcfileW)
        {
            switch (*srcfileW)
            {
            case '\\':
            case '/':
                *p++ = '[';
                *p++ = '\\';
                *p++ = '\\';
                *p++ = '/';
                *p++ = ']';
                break;
            case '.':
                *p++ = '?';
                break;
            default:
                *p++ = *srcfileW;
                break;
            }
            srcfileW++;
        }
    }
    *p = 0;
    return mask;
}
