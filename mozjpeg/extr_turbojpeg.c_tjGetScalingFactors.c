
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tjscalingfactor ;


 int JMSG_LENGTH_MAX ;
 int NUMSF ;
 int errStr ;
 scalar_t__ sf ;
 int snprintf (int ,int ,char*) ;

tjscalingfactor *tjGetScalingFactors(int *numscalingfactors)
{
  if (numscalingfactors == ((void*)0)) {
  snprintf(errStr, JMSG_LENGTH_MAX,
   "tjGetScalingFactors(): Invalid argument");
  return ((void*)0);
 }

 *numscalingfactors=NUMSF;
 return (tjscalingfactor *)sf;
}
