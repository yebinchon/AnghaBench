
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GD_TRUE ;

int gdAffineIdentity (double dst[6])
{
 dst[0] = 1;
 dst[1] = 0;
 dst[2] = 0;
 dst[3] = 1;
 dst[4] = 0;
 dst[5] = 0;
 return GD_TRUE;
}
