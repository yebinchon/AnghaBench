
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int (* PrintfCallback ) (char*,char const) ;


 int strlen (char const*) ;

__attribute__((used)) static void render_ascii(PrintfCallback cb_printf, const ut8 *c, const ut8 *d) {
 const char *pal = " `.,-:+*%$#";
 int idx, pal_len = strlen (pal);
 float p = (c[0]+c[1]+c[2])/3;
 float q = (d[0]+d[1]+d[2])/3;
 idx = ((p+q)/2) / (255/pal_len);
 if (idx >= pal_len) idx = pal_len-1;
 cb_printf ("%c", pal[idx]);
}
