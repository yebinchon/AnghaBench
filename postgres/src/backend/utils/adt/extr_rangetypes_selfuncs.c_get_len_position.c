
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isinf (double) ;

__attribute__((used)) static double
get_len_position(double value, double hist1, double hist2)
{
 if (!isinf(hist1) && !isinf(hist2))
 {





  if (isinf(value))
   return 0.5;

  return 1.0 - (hist2 - value) / (hist2 - hist1);
 }
 else if (isinf(hist1) && !isinf(hist2))
 {




  return 1.0;
 }
 else if (isinf(hist1) && isinf(hist2))
 {

  return 0.0;
 }
 else
 {
  return 0.5;
 }
}
