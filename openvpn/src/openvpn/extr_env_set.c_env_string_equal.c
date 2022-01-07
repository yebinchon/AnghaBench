
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (char const*) ;

__attribute__((used)) static bool
env_string_equal(const char *s1, const char *s2)
{
    int c1, c2;
    ASSERT(s1);
    ASSERT(s2);

    while (1)
    {
        c1 = *s1++;
        c2 = *s2++;
        if (c1 == '=')
        {
            c1 = 0;
        }
        if (c2 == '=')
        {
            c2 = 0;
        }
        if (!c1 && !c2)
        {
            return 1;
        }
        if (c1 != c2)
        {
            break;
        }
    }
    return 0;
}
