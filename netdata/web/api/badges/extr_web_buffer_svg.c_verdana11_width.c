
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_UTF8_BYTE (char const) ;
 scalar_t__ IS_UTF8_STARTBYTE (char const) ;
 scalar_t__ VERDANA_KERNING ;
 scalar_t__ VERDANA_PADDING ;
 scalar_t__ likely (int) ;
 double* verdana11_widths ;

__attribute__((used)) static inline double verdana11_width(const char *s, float em_size) {
    double w = 0.0;

    while(*s) {





        if(IS_UTF8_STARTBYTE(*s)) {
            s++;
            while(IS_UTF8_BYTE(*s) && !IS_UTF8_STARTBYTE(*s)){
                s++;
            }
            w += em_size;
        }
        else {
            if(likely(!(*s & 0x80))){
            double t = verdana11_widths[(unsigned char)*s];
                if(t != 0.0)
                w += t + VERDANA_KERNING;
            }
            s++;
        }
    }

    w -= VERDANA_KERNING;
    w += VERDANA_PADDING;
    return w;
}
