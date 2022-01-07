
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char INT ;



__attribute__((used)) static INT char_to_int(WCHAR c)
{
    if('0' <= c && c <= '9')
        return c - '0';
    if('a' <= c && c <= 'z')
        return c - 'a' + 10;
    if('A' <= c && c <= 'Z')
        return c - 'A' + 10;
    return 100;
}
