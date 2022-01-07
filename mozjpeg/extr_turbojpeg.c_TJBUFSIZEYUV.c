
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long tjBufSizeYUV (int,int,int) ;

unsigned long TJBUFSIZEYUV(int width, int height, int subsamp)
{
 return tjBufSizeYUV(width, height, subsamp);
}
