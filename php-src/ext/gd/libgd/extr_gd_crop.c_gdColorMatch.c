
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdImageAlpha (int ,int) ;
 int gdImageBlue (int ,int) ;
 int gdImageGreen (int ,int) ;
 int gdImageRed (int ,int) ;

__attribute__((used)) static int gdColorMatch(gdImagePtr im, int col1, int col2, float threshold)
{
 const int dr = gdImageRed(im, col1) - gdImageRed(im, col2);
 const int dg = gdImageGreen(im, col1) - gdImageGreen(im, col2);
 const int db = gdImageBlue(im, col1) - gdImageBlue(im, col2);
 const int da = gdImageAlpha(im, col1) - gdImageAlpha(im, col2);
 const int dist = dr * dr + dg * dg + db * db + da * da;

 return (100.0 * dist / 195075) < threshold;
}
