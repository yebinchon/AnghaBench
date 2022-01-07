
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64 ;


 double CheckPointDistanceEstimate ;
 double PrevCheckPointDistance ;

__attribute__((used)) static void
UpdateCheckPointDistanceEstimate(uint64 nbytes)
{
 PrevCheckPointDistance = nbytes;
 if (CheckPointDistanceEstimate < nbytes)
  CheckPointDistanceEstimate = nbytes;
 else
  CheckPointDistanceEstimate =
   (0.90 * CheckPointDistanceEstimate + 0.10 * (double) nbytes);
}
