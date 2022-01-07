
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef unsigned int int64_t ;


 int assert (int) ;

__attribute__((used)) static inline int
value_fit_signed_field_p (int64_t value, unsigned width)
{
  assert (width < 32);
  if (width < sizeof (value) * 8)
    {
      int64_t lim = (int64_t)1 << (width - 1);
      if (value >= -lim && value < lim)
 return 1;
    }
  return 0;
}
