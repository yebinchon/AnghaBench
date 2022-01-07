
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double eps ;
 double expm (double,double) ;
 double pow (int,double) ;

__attribute__((used)) static double series (int m, int id)




{
  int k;
  double ak, p, s, t;


  s = 0.;



  for (k = 0; k < id; k++){
    ak = 8 * k + m;
    p = id - k;
    t = expm (p, ak);
    s = s + t / ak;
    s = s - (int) s;
  }



  for (k = id; k <= id + 100; k++){
    ak = 8 * k + m;
    t = pow (16., (double) (id - k)) / ak;
    if (t < 1e-17) break;
    s = s + t;
    s = s - (int) s;
  }
  return s;
}
