
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_word ;


 scalar_t__ MP_WORD_MAX ;

__attribute__((used)) static inline bool
ADD_WILL_OVERFLOW(mp_word W, mp_word V)
{
 return ((MP_WORD_MAX - V) < W);
}
