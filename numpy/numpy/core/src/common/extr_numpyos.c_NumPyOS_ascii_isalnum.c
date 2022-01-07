
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NumPyOS_ascii_isalpha (char) ;
 scalar_t__ NumPyOS_ascii_isdigit (char) ;

__attribute__((used)) static int
NumPyOS_ascii_isalnum(char c)
{
    return NumPyOS_ascii_isdigit(c) || NumPyOS_ascii_isalpha(c);
}
