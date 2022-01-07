
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
NumPyOS_ascii_isdigit(char c)
{
    return (c >= '0' && c <= '9');
}
