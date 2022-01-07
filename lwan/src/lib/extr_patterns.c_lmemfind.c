
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memchr (char const*,char const,size_t) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;

__attribute__((used)) static const char *
lmemfind(const char *s1, size_t l1, const char *s2, size_t l2)
{
 const char *init;

 if (l2 == 0)
  return (s1);
 if (l2 > l1)
  return (((void*)0));





        l2--;
        l1 = l1 - l2;
        while (l1 > 0 && (init = (const char *)memchr(s1, *s2, l1)) != ((void*)0)) {

                init++;
                if (memcmp(init, s2 + 1, l2) == 0)
                        return init - 1;


                l1 -= (size_t)(init - s1);
                s1 = init;
        }

        return (((void*)0));
}
