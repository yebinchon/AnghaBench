
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double rand () ;

__attribute__((used)) static double
waste_time (int n)
{
  int i;
  double f, g, h, s;

  s = 0.0;




  for (i = n*100; i > 0; --i)
    {
      f = rand ();
      g = rand ();
      h = rand ();
      s += 2.0 * f * g / (h != 0.0 ? (h * h) : 1.0);
    }
  return s;
}
