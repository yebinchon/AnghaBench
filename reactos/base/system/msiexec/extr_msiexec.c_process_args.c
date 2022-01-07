
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int chomp (int *,int *) ;
 int lstrlenW (int *) ;

__attribute__((used)) static void process_args( WCHAR *cmdline, int *pargc, WCHAR ***pargv )
{
    WCHAR **argv, *p;
    int i, count;

    *pargc = 0;
    *pargv = ((void*)0);

    count = chomp( cmdline, ((void*)0) );
    if (!(p = HeapAlloc( GetProcessHeap(), 0, (lstrlenW(cmdline) + count + 1) * sizeof(WCHAR) )))
        return;

    count = chomp( cmdline, p );
    if (!(argv = HeapAlloc( GetProcessHeap(), 0, (count + 1) * sizeof(WCHAR *) )))
    {
        HeapFree( GetProcessHeap(), 0, p );
        return;
    }
    for (i = 0; i < count; i++)
    {
        argv[i] = p;
        p += lstrlenW( p ) + 1;
    }
    argv[i] = ((void*)0);

    *pargc = count;
    *pargv = argv;
}
