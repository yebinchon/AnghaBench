
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdImageConvolution (int ,float**,int,int) ;

int gdImageEdgeDetectQuick(gdImagePtr src)
{
 float filter[3][3] = {{-1.0,0.0,-1.0},
    {0.0,4.0,0.0},
    {-1.0,0.0,-1.0}};

 return gdImageConvolution(src, filter, 1, 127);
}
