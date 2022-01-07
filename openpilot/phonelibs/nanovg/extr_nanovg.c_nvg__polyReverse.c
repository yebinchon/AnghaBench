
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGpoint ;



__attribute__((used)) static void nvg__polyReverse(NVGpoint* pts, int npts)
{
 NVGpoint tmp;
 int i = 0, j = npts-1;
 while (i < j) {
  tmp = pts[i];
  pts[i] = pts[j];
  pts[j] = tmp;
  i++;
  j--;
 }
}
