
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwdec_info {scalar_t__ auto_pos; scalar_t__ copying; scalar_t__ rank; } ;


 scalar_t__ INT_MAX ;

__attribute__((used)) static int hwdec_compare(const void *p1, const void *p2)
{
    struct hwdec_info *h1 = (void *)p1;
    struct hwdec_info *h2 = (void *)p2;

    if (h1 == h2)
        return 0;


    if ((h1->auto_pos == INT_MAX) != (h2->auto_pos == INT_MAX))
        return h1->auto_pos == INT_MAX ? 1 : -1;

    if (h1->copying != h2->copying)
        return h1->copying ? 1 : -1;

    if (h1->auto_pos != h2->auto_pos)
        return h1->auto_pos > h2->auto_pos ? 1 : -1;

    return h1->rank > h2->rank ? 1 :-1;
}
