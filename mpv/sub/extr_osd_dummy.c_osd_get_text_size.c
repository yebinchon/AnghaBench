
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;



void osd_get_text_size(struct osd_state *osd, int *out_screen_h, int *out_font_h)
{
    *out_screen_h = 0;
    *out_font_h = 0;
}
