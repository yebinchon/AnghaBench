
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LIKELY (void*) ;
 int LWAN_NO_DISCARD (void*) ;
 int free (void*) ;

__attribute__((used)) static void fourty_two_and_free(void *str)
{
    if (LIKELY(str)) {
        char *s = str;
        while (*s)
            *s++ = 42;
        LWAN_NO_DISCARD(str);
        free(str);
    }
}
