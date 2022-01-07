
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int histcell ;
typedef int * hist3d ;


 int HIST_C0_ELEMS ;
 int HIST_C1_ELEMS ;
 int HIST_C2_ELEMS ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
zeroHistogram (hist3d histogram)
{
  int i;

  for (i = 0; i < HIST_C0_ELEMS; i++)
    {
      memset (histogram[i],
       0, HIST_C1_ELEMS * HIST_C2_ELEMS * sizeof (histcell));
    }
}
