
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_color_key {scalar_t__ color_space_low_value; scalar_t__ color_space_high_value; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;



__attribute__((used)) static BOOL color_in_range(const struct wined3d_color_key *color_key, DWORD color)
{


    return color >= color_key->color_space_low_value
            && color <= color_key->color_space_high_value;
}
