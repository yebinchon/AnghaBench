
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef int LPCSTR ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 scalar_t__ dns_strdup_aw (int ) ;
 char* dns_strdup_wu (scalar_t__) ;

__attribute__((used)) static inline char *dns_strdup_au( LPCSTR src )
{
    char *dst = ((void*)0);
    LPWSTR ret = dns_strdup_aw( src );

    if (ret)
    {
        dst = dns_strdup_wu( ret );
        HeapFree( GetProcessHeap(), 0, ret );
    }
    return dst;
}
