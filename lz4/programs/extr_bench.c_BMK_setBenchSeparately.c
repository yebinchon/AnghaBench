
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_benchSeparately ;

void BMK_setBenchSeparately(int separate) { g_benchSeparately = (separate!=0); }
