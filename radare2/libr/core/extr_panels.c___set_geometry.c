
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPanelPos ;


 int __set_pos (int *,int,int) ;
 int __set_size (int *,int,int) ;

void __set_geometry(RPanelPos *pos, int x, int y, int w, int h) {
 __set_pos (pos, x, y);
 __set_size (pos, w, h);
}
