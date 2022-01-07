
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fmodf (float,float) ;

__attribute__((used)) static float nvg__modf(float a, float b) { return fmodf(a, b); }
