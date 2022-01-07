
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int BASE ;
 int DAMP ;
 int SKEW ;
 int TMAX ;
 int TMIN ;

ut32 adapt_bias(ut32 delta, unsigned n_points, int is_first) {
 ut32 k = 0;
 delta /= is_first? DAMP: 2;
 delta += delta / n_points;

 while (delta > ((BASE - TMIN) * TMAX) / 2) {
  delta /= (BASE - TMIN);
  k += BASE;
 }

 return k + (((BASE - TMIN + 1) * delta) / (delta + SKEW));
}
