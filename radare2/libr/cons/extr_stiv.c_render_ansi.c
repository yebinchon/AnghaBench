
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int (* PrintfCallback ) (char*,int) ;


 int reduce8 (int const,int const,int const) ;

__attribute__((used)) static void render_ansi(PrintfCallback cb_printf, const ut8 *c, const ut8 *d) {
 int fg = 0;
 int color = reduce8 (c[0], c[1], c[2]);
 if (color == -1)return;

 cb_printf ("\x1b[%dm", color+(fg?30:40));
}
