
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_color {int a; int r; int g; int b; } ;
typedef int ARGB ;



__attribute__((used)) static ARGB convert_color(struct nk_color c)
{
    return (c.a << 24) | (c.r << 16) | (c.g << 8) | c.b;
}
