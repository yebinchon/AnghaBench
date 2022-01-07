
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ char_class (char const,unsigned int const) ;

__attribute__((used)) static inline bool
char_inc_exc(const char c, const unsigned int inclusive, const unsigned int exclusive)
{
    return char_class(c, inclusive) && !char_class(c, exclusive);
}
