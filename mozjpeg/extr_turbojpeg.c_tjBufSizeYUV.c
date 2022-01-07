
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long tjBufSizeYUV2 (int,int,int,int) ;

unsigned long tjBufSizeYUV(int width, int height, int subsamp)
{
 return tjBufSizeYUV2(width, 4, height, subsamp);
}
