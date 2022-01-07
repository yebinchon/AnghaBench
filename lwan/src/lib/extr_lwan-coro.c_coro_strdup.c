
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coro {int dummy; } ;


 scalar_t__ SSIZE_MAX ;
 char* coro_strndup (struct coro*,char const*,scalar_t__) ;

char *coro_strdup(struct coro *coro, const char *str)
{
    return coro_strndup(coro, str, SSIZE_MAX - 1);
}
