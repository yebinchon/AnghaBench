
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int message; } ;
struct Fortune {TYPE_1__ item; } ;


 int memcmp (int ,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static int fortune_compare(const void *a, const void *b)
{
    const struct Fortune *fortune_a = (const struct Fortune *)a;
    const struct Fortune *fortune_b = (const struct Fortune *)b;
    size_t a_len = strlen(fortune_a->item.message);
    size_t b_len = strlen(fortune_b->item.message);

    if (!a_len || !b_len)
        return a_len > b_len;

    size_t min_len = a_len < b_len ? a_len : b_len;
    int cmp = memcmp(fortune_a->item.message, fortune_b->item.message, min_len);
    if (cmp == 0)
        return a_len > b_len;

    return cmp > 0;
}
