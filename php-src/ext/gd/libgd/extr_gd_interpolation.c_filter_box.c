
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double DEFAULT_FILTER_BOX ;

__attribute__((used)) static double filter_box(double x) {
 if (x < - DEFAULT_FILTER_BOX)
  return 0.0f;
 if (x < DEFAULT_FILTER_BOX)
  return 1.0f;
 return 0.0f;
}
