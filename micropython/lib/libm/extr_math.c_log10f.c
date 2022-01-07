
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _M_LN10 ;
 float logf (float) ;

float log10f(float x) { return logf(x) / (float)_M_LN10; }
