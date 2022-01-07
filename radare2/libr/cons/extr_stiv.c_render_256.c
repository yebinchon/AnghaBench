
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int (* PrintfCallback ) (char*,int,int ) ;


 int rgb (int const,int const,int const) ;

__attribute__((used)) static void render_256(PrintfCallback cb_printf, const ut8 *c, const ut8 *d) {
 cb_printf ("\x1b[%d;5;%dm", 38, rgb (c[0], c[1], c[2]));
 cb_printf ("\x1b[%d;5;%dm", 48, rgb (d[0], d[1], d[2]));
}
