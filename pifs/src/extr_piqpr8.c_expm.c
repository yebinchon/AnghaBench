
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ntp ;

__attribute__((used)) static double expm (double p, double ak)




{
  int i, j;
  double p1, pt, r;

  static double tp[25];
  static int tp1 = 0;



  if (tp1 == 0) {
    tp1 = 1;
    tp[0] = 1.;

    for (i = 1; i < 25; i++) tp[i] = 2. * tp[i-1];
  }

  if (ak == 1.) return 0.;



  for (i = 0; i < 25; i++) if (tp[i] > p) break;

  pt = tp[i-1];
  p1 = p;
  r = 1.;



  for (j = 1; j <= i; j++){
    if (p1 >= pt){
      r = 16. * r;
      r = r - (int) (r / ak) * ak;
      p1 = p1 - pt;
    }
    pt = 0.5 * pt;
    if (pt >= 1.){
      r = r * r;
      r = r - (int) (r / ak) * ak;
    }
  }

  return r;
}
