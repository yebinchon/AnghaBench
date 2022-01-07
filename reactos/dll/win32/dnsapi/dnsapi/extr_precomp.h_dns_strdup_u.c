
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *dns_strdup_u( const char *src )
{
    char *dst;

    if (!src) return ((void*)0);
    dst = HeapAlloc(GetProcessHeap(), 0, (strlen( src ) + 1) * sizeof(char) );
    if (dst) strcpy( dst, src );
    return dst;
}
