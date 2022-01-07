
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIGIT_T ;


 unsigned int BITS_PER_DIGIT ;
 int HIBITMASK ;
 int MAX_DIGIT ;
 scalar_t__ QhatTooBig (int,int,int,int) ;
 int mpAdd (int*,int*,int*,unsigned int) ;
 int mpCompare (int*,int*,unsigned int) ;
 int mpMultSub (int,int*,int*,int,unsigned int) ;
 int mpSetDigit (int*,int,unsigned int) ;
 int mpSetEqual (int*,int*,unsigned int) ;
 int mpSetZero (int*,unsigned int) ;
 int mpShiftLeft (int*,int*,unsigned int,int) ;
 int mpShiftRight (int*,int*,unsigned int,int) ;
 int mpShortDiv (int*,int*,int,unsigned int) ;
 scalar_t__ mpSizeof (int*,unsigned int) ;
 int spDivide (int*,int*,int*,int) ;

__attribute__((used)) static int
mpDivide(DIGIT_T* q, DIGIT_T* r, DIGIT_T* u, unsigned int udigits,
         DIGIT_T* v, unsigned int vdigits)
{
  unsigned int shift;
  int n;
  int m;
  int j;
  int qhatOK;
  int cmp;
  DIGIT_T bitmask;
  DIGIT_T overflow;
  DIGIT_T qhat;
  DIGIT_T rhat;
  DIGIT_T t[2];
  DIGIT_T* uu;
  DIGIT_T* ww;


  mpSetZero(q, udigits);
  mpSetZero(r, udigits);

  n = (int)mpSizeof(v, vdigits);
  m = (int)mpSizeof(u, udigits);
  m -= n;

  if (n == 0)
  {
    return -1;
  }
  if (n == 1)
  {
    r[0] = mpShortDiv(q, u, v[0], udigits);
    return 0;
  }
  if (m < 0)
  {
    mpSetEqual(r, u, udigits);
    return 0;
  }
  if (m == 0)
  {
    cmp = mpCompare(u, v, (unsigned int)n);
    if (cmp < 0)
    {
      mpSetEqual(r, u, udigits);
      return 0;
    }
    else if (cmp == 0)
    {
      mpSetDigit(q, 1, udigits);
      return 0;
    }
  }
  bitmask = HIBITMASK;
  for (shift = 0; shift < BITS_PER_DIGIT; shift++)
  {
    if (v[n - 1] & bitmask)
    {
      break;
    }
    bitmask >>= 1;
  }

  overflow = mpShiftLeft(v, v, shift, n);

  overflow = mpShiftLeft(r, u, shift, n + m);
  uu = r;
  t[0] = overflow;

  for (j = m; j >= 0; j--)
  {

    qhatOK = 0;
    t[1] = t[0];
    t[0] = uu[j+n-1];
    overflow = spDivide(&qhat, &rhat, t, v[n - 1]);

    if (overflow)
    {
      qhat = MAX_DIGIT;
      rhat = uu[j + n - 1];
      rhat += v[n - 1];
      if (rhat < v[n - 1])
      {
        qhatOK = 1;
      }
    }
    if (!qhatOK && QhatTooBig(qhat, rhat, v[n - 2], uu[j + n - 2]))
    {
      qhat--;
      rhat += v[n - 1];
      if (!(rhat < v[n - 1]))
      {
        if (QhatTooBig(qhat, rhat, v[n - 2], uu[j + n - 2]))
        {
          qhat--;
        }
      }
    }

    ww = &uu[j];
    overflow = mpMultSub(t[1], ww, v, qhat, (unsigned int)n);

    q[j] = qhat;
    if (overflow)
    {
      q[j]--;
      overflow = mpAdd(ww, ww, v, (unsigned int)n);
    }
    t[0] = uu[j + n - 1];
  }

  for (j = n; j < m+n; j++)
  {
    uu[j] = 0;
  }

  mpShiftRight(r, r, shift, n);
  mpShiftRight(v, v, shift, n);
  return 0;
}
