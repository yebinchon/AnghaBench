
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* talloc_strndup (void*,char const*,int) ;

__attribute__((used)) static char *col_dup(void *talloc_ctx, const char *src)
{
    int length = 0;
    while (src[length] > 31)
        length++;

    return talloc_strndup(talloc_ctx, src, length);
}
