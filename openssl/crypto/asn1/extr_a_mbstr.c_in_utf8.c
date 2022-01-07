
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int in_utf8(unsigned long value, void *arg)
{
    int *nchar;
    nchar = arg;
    (*nchar)++;
    return 1;
}
