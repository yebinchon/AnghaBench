
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
ArrayGetOffset(int n, const int *dim, const int *lb, const int *indx)
{
 int i,
    scale = 1,
    offset = 0;

 for (i = n - 1; i >= 0; i--)
 {
  offset += (indx[i] - lb[i]) * scale;
  scale *= dim[i];
 }
 return offset;
}
