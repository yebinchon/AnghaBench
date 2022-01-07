
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdImageConvolution (int ,float**,float,int ) ;

int gdImageSmooth(gdImagePtr im, float weight)
{
 float filter[3][3] = {{1.0,1.0,1.0},
    {1.0,0.0,1.0},
    {1.0,1.0,1.0}};

 filter[1][1] = weight;

 return gdImageConvolution(im, filter, weight+8, 0);
}
