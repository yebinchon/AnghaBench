
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
append_char(unsigned char *banner, size_t banner_max, unsigned *banner_length, char c)
{
    if (*banner_length < banner_max)
        banner[(*banner_length)++] = c;
}
