
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int nvg__ptEquals(float x1, float y1, float x2, float y2, float tol)
{
 float dx = x2 - x1;
 float dy = y2 - y1;
 return dx*dx + dy*dy < tol*tol;
}
