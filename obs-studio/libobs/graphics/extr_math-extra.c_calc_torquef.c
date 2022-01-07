
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPSILON ;
 scalar_t__ close_float (float,float,int ) ;

float calc_torquef(float val1, float val2, float torque, float min_adjust,
     float t)
{
 float out = val1;
 float dist;
 bool over;

 if (close_float(val1, val2, EPSILON))
  return val1;

 dist = (val2 - val1) * torque;
 over = dist > 0.0f;

 if (over) {
  if (dist < min_adjust)
   dist = min_adjust;
  out += dist * t;
  if (out > val2)
   out = val2;
 } else {
  if (dist > -min_adjust)
   dist = -min_adjust;
  out += dist * t;
  if (out < val2)
   out = val2;
 }

 return out;
}
