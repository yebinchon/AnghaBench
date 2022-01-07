
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coro {int dummy; } ;


 scalar_t__ LIKELY (char*) ;
 char* coro_malloc (struct coro*,size_t const) ;
 int memcpy (char*,char const*,size_t const) ;
 int strnlen (char const*,size_t) ;

char *coro_strndup(struct coro *coro, const char *str, size_t max_len)
{
    const size_t len = strnlen(str, max_len) + 1;
    char *dup = coro_malloc(coro, len);

    if (LIKELY(dup)) {
        memcpy(dup, str, len);
        dup[len - 1] = '\0';
    }
    return dup;
}
