
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef int * LPSTR ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 scalar_t__ dns_strdup_uw (char const*) ;
 int * dns_strdup_wa (scalar_t__) ;

__attribute__((used)) static inline LPSTR dns_strdup_ua( const char *src )
{
    LPSTR dst = ((void*)0);
    LPWSTR ret = dns_strdup_uw( src );

    if (ret)
    {
        dst = dns_strdup_wa( ret );
        HeapFree( GetProcessHeap(), 0, ret );
    }
    return dst;
}
