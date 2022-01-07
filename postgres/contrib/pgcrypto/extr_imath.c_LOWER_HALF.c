
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_word ;
typedef int mp_digit ;



__attribute__((used)) static inline mp_digit
LOWER_HALF(mp_word W)
{
 return (mp_digit) (W);
}
