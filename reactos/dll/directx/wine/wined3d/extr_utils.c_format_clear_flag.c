
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_format {unsigned int* flags; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;

__attribute__((used)) static void format_clear_flag(struct wined3d_format *format, unsigned int flag)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(format->flags); ++i)
        format->flags[i] &= ~flag;
}
