#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ VERDANA_KERNING ; 
 scalar_t__ VERDANA_PADDING ; 
 scalar_t__ FUNC2 (int) ; 
 double* verdana11_widths ; 

__attribute__((used)) static inline double FUNC3(const char *s, float em_size) {
    double w = 0.0;

    while(*s) {
        // if UTF8 multibyte char found and guess it's width equal 1em
        // as label width will be updated with JavaScript this is not so important

        // TODO: maybe move UTF8 functions from url.c to separate util in libnetdata
        //       then use url_utf8_get_byte_length etc.
        if(FUNC1(*s)) {
            s++;
            while(FUNC0(*s) && !FUNC1(*s)){
                s++;
            }
            w += em_size;
        }
        else {
            if(FUNC2(!(*s & 0x80))){ // Byte 1XXX XXXX is not valid in UTF8
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