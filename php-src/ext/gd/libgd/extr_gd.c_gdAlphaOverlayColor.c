
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int gdAlphaOverlayColor (int src, int dst, int max )
{
 dst = dst << 1;
 if( dst > max ) {

  return dst + (src << 1) - (dst * src / max) - max;
 } else {

  return dst * src / max;
 }
}
