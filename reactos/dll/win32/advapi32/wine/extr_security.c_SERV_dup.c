
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int * LPWSTR ;
typedef int LPCSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static LPWSTR SERV_dup( LPCSTR str )
{
    UINT len;
    LPWSTR wstr;

    if( !str )
        return ((void*)0);
    len = MultiByteToWideChar( CP_ACP, 0, str, -1, ((void*)0), 0 );
    wstr = heap_alloc( len*sizeof (WCHAR) );
    MultiByteToWideChar( CP_ACP, 0, str, -1, wstr, len );
    return wstr;
}
