
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_color {scalar_t__ a; scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
typedef int ALLEGRO_COLOR ;


 int al_map_rgba (unsigned char,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static ALLEGRO_COLOR
nk_color_to_allegro_color(struct nk_color color)
{
    return al_map_rgba((unsigned char)color.r, (unsigned char)color.g,
                (unsigned char)color.b, (unsigned char)color.a);
}
