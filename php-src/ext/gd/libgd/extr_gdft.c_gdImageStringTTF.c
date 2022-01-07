
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImage ;


 char* gdImageStringFT (int *,int*,int,char*,double,double,int,int,char*) ;

char *
gdImageStringTTF (gdImage * im, int *brect, int fg, char *fontlist,
    double ptsize, double angle, int x, int y, char *string)
{

 return gdImageStringFT (im, brect, fg, fontlist, ptsize, angle, x, y, string);
}
