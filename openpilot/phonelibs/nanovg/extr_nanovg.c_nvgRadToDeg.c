
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float NVG_PI ;

float nvgRadToDeg(float rad)
{
 return rad / NVG_PI * 180.0f;
}
