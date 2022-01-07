
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wineW ;
typedef char WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_UNIXCP ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,char const*,int,char*,int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (char*) ;
 char* getenv (char*) ;
 int strcatW (char*,char const*) ;
 int strcmpW (char*,char const*) ;
 int strcpyW (char*,char const*) ;
 int strlenW (char const*) ;

const WCHAR *get_wine_loader_name(void)
{
    static const BOOL is_win64 = sizeof(void *) > sizeof(int);
    static const WCHAR wineW[] = {'w','i','n','e',0};
    static const WCHAR suffixW[] = {'6','4',0};
    static const WCHAR *loader;

    if (!loader)
    {
        WCHAR *p, *buffer;
        const char *ptr;




        if ((ptr = getenv("WINELOADER")))
        {
            DWORD len = 2 + MultiByteToWideChar( CP_UNIXCP, 0, ptr, -1, ((void*)0), 0 );
            buffer = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) );
            MultiByteToWideChar( CP_UNIXCP, 0, ptr, -1, buffer, len );
        }
        else
        {
            buffer = HeapAlloc( GetProcessHeap(), 0, sizeof(wineW) + 2 * sizeof(WCHAR) );
            strcpyW( buffer, wineW );
        }
        p = buffer + strlenW( buffer ) - strlenW( suffixW );
        if (p > buffer && !strcmpW( p, suffixW ))
        {
            if (!is_win64) *p = 0;
        }
        else if (is_win64) strcatW( buffer, suffixW );

        TRACE( "returning %s\n", debugstr_w(buffer) );
        loader = buffer;
    }
    return loader;
}
