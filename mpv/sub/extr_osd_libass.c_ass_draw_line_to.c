
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ass_draw {int dummy; } ;


 int ass_draw_append (struct ass_draw*,char*) ;
 int ass_draw_c (struct ass_draw*,float,float) ;

__attribute__((used)) static void ass_draw_line_to(struct ass_draw *d, float x, float y)
{
    ass_draw_append(d, " l");
    ass_draw_c(d, x, y);
}
