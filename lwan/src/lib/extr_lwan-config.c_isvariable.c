
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (int) ;

__attribute__((used)) static bool isvariable(int chr)
{
    return isalpha(chr) || chr == '_';
}
