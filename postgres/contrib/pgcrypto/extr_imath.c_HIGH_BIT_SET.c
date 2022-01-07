
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_word ;


 int MP_WORD_BIT ;

__attribute__((used)) static inline bool
HIGH_BIT_SET(mp_word W)
{
 return (W >> (MP_WORD_BIT - 1)) != 0;
}
