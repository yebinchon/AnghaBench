
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIGIT_T ;


 int MAX_DIG_LEN ;
 int mpModulo (int *,int *,unsigned int,int *,unsigned int) ;
 int mpMultiply (int *,int *,int *,unsigned int) ;
 int mpSetZero (int *,unsigned int) ;

__attribute__((used)) static int
mpModMult(DIGIT_T* a, DIGIT_T* x, DIGIT_T* y,
          DIGIT_T* m, unsigned int ndigits)
{

  DIGIT_T p[MAX_DIG_LEN * 2];


  mpMultiply(p, x, y, ndigits);

  mpModulo(a, p, ndigits * 2, m, ndigits);
  mpSetZero(p, ndigits * 2);
  return 0;
}
