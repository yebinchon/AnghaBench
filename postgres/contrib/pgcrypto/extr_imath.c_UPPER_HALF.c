
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_word ;


 int MP_DIGIT_BIT ;

__attribute__((used)) static inline mp_word
UPPER_HALF(mp_word W)
{
 return (W >> MP_DIGIT_BIT);
}
