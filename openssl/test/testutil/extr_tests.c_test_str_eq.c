
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 int test_fail_string_message (int *,char const*,int,char*,char const*,char const*,char*,char const*,int ,char const*,int ) ;

int test_str_eq(const char *file, int line, const char *st1, const char *st2,
                const char *s1, const char *s2)
{
    if (s1 == ((void*)0) && s2 == ((void*)0))
      return 1;
    if (s1 == ((void*)0) || s2 == ((void*)0) || strcmp(s1, s2) != 0) {
        test_fail_string_message(((void*)0), file, line, "string", st1, st2, "==",
                                 s1, s1 == ((void*)0) ? 0 : strlen(s1),
                                 s2, s2 == ((void*)0) ? 0 : strlen(s2));
        return 0;
    }
    return 1;
}
