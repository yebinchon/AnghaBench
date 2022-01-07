
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int l; int p; } ;


 int get_utf8 (int ,int,int ,int*) ;

extern int in_grouping_U(struct SN_env * z, const unsigned char * s, int min, int max, int repeat) {
    do {
 int ch;
 int w = get_utf8(z->p, z->c, z->l, & ch);
 if (!w) return -1;
 if (ch > max || (ch -= min) < 0 || (s[ch >> 3] & (0X1 << (ch & 0X7))) == 0)
     return w;
 z->c += w;
    } while (repeat);
    return 0;
}
