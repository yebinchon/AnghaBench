
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int* uri_char_table ;

__attribute__((used)) static inline BOOL is_uri_reserved(WCHAR c)
{
    return c < 128 && uri_char_table[c] == 1;
}
