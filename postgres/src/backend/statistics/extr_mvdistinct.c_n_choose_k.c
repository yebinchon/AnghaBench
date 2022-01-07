
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int Min (int,int) ;

__attribute__((used)) static int
n_choose_k(int n, int k)
{
 int d,
    r;

 Assert((k > 0) && (n >= k));


 k = Min(k, n - k);

 r = 1;
 for (d = 1; d <= k; ++d)
 {
  r *= n--;
  r /= d;
 }

 return r;
}
