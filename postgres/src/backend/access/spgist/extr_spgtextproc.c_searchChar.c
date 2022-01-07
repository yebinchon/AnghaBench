
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int Datum ;


 scalar_t__ DatumGetInt16 (int ) ;

__attribute__((used)) static bool
searchChar(Datum *nodeLabels, int nNodes, int16 c, int *i)
{
 int StopLow = 0,
    StopHigh = nNodes;

 while (StopLow < StopHigh)
 {
  int StopMiddle = (StopLow + StopHigh) >> 1;
  int16 middle = DatumGetInt16(nodeLabels[StopMiddle]);

  if (c < middle)
   StopHigh = StopMiddle;
  else if (c > middle)
   StopLow = StopMiddle + 1;
  else
  {
   *i = StopMiddle;
   return 1;
  }
 }

 *i = StopHigh;
 return 0;
}
