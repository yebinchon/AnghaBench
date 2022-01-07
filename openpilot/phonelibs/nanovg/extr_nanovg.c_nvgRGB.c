
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcolor ;


 int nvgRGBA (unsigned char,unsigned char,unsigned char,int) ;

NVGcolor nvgRGB(unsigned char r, unsigned char g, unsigned char b)
{
 return nvgRGBA(r,g,b,255);
}
