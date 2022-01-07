
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seekpoint {scalar_t__ pts; } ;



__attribute__((used)) static int compare_seekpoint(const void *pa, const void *pb)
{
    const struct seekpoint *a = pa, *b = pb;
    return a->pts == b->pts ? 0 : (a->pts < b->pts ? -1 : +1);
}
