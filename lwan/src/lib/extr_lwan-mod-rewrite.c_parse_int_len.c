
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_INT_DIGITS ;
 scalar_t__ UNLIKELY (int) ;
 int parse_int (int ,int) ;
 int strndupa (char const*,size_t) ;

__attribute__((used)) static __attribute__((noinline)) int parse_int_len(const char *s, size_t len,
                                                   int default_value)
{
    if (UNLIKELY(len > MAX_INT_DIGITS))
        return default_value;

    return parse_int(strndupa(s, len), default_value);
}
