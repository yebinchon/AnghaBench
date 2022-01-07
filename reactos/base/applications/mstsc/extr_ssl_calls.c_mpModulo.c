
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIGIT_T ;


 int MAX_DIG_LEN ;
 int mpDivide (int *,int *,int *,unsigned int,int *,unsigned int) ;
 int mpSetEqual (int *,int *,unsigned int) ;
 int mpSetZero (int *,unsigned int) ;

__attribute__((used)) static int
mpModulo(DIGIT_T* r, DIGIT_T* u, unsigned int udigits,
         DIGIT_T* v, unsigned int vdigits)
{
  DIGIT_T qq[MAX_DIG_LEN * 2];

  DIGIT_T rr[MAX_DIG_LEN * 2];


  mpDivide(qq, rr, u, udigits, v, vdigits);
  mpSetEqual(r, rr, vdigits);
  mpSetZero(rr, udigits);
  mpSetZero(qq, udigits);
  return 0;
}
