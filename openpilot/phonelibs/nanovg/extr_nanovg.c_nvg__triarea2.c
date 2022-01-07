
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float nvg__triarea2(float ax, float ay, float bx, float by, float cx, float cy)
{
 float abx = bx - ax;
 float aby = by - ay;
 float acx = cx - ax;
 float acy = cy - ay;
 return acx*aby - abx*acy;
}
