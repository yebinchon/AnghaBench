
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;



__attribute__((used)) static WCHAR int_to_char(int i)
{
    if(i < 10)
        return '0'+i;
    return 'A'+i-10;
}
