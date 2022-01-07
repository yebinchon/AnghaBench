
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_strnlen (char const*,size_t) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 int test_fail_string_message (int *,char const*,int,char*,char const*,char const*,char*,char const*,int ,char const*,int ) ;

int test_strn_ne(const char *file, int line, const char *st1, const char *st2,
                 const char *s1, const char *s2, size_t len)
{
    if ((s1 == ((void*)0)) ^ (s2 == ((void*)0)))
      return 1;
    if (s1 == ((void*)0) || strncmp(s1, s2, len) == 0) {
        test_fail_string_message(((void*)0), file, line, "string", st1, st2, "!=",
                                 s1, s1 == ((void*)0) ? 0 : OPENSSL_strnlen(s1, len),
                                 s2, s2 == ((void*)0) ? 0 : OPENSSL_strnlen(s2, len));
        return 0;
    }
    return 1;
}
