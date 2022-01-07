
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimeLineID ;


 scalar_t__ existsTimeLineHistory (scalar_t__) ;

TimeLineID
findNewestTimeLine(TimeLineID startTLI)
{
 TimeLineID newestTLI;
 TimeLineID probeTLI;





 newestTLI = startTLI;

 for (probeTLI = startTLI + 1;; probeTLI++)
 {
  if (existsTimeLineHistory(probeTLI))
  {
   newestTLI = probeTLI;
  }
  else
  {

   break;
  }
 }

 return newestTLI;
}
