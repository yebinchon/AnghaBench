
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImage ;
typedef int gdFTStringExtraPtr ;



char *
gdImageStringFTEx (gdImage * im, int *brect, int fg, char *fontlist,
   double ptsize, double angle, int x, int y, char *string,
   gdFTStringExtraPtr strex)
{
 return "libgd was not built with FreeType font support\n";
}
