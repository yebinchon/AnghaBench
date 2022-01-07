
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {unsigned int count; struct Range* list; } ;
struct Range {unsigned int begin; unsigned int end; } ;



__attribute__((used)) static unsigned
count_type(const struct RangeList *ports, int start_type, int end_type)
{
    unsigned min_port = start_type;
    unsigned max_port = end_type;
    unsigned i;
    unsigned result = 0;

    for (i=0; i<ports->count; ports++) {
        struct Range r = ports->list[i];
        if (r.begin > max_port)
            continue;
        if (r.end < min_port)
            continue;

        if (r.begin < min_port)
            r.begin = min_port;
        if (r.end > max_port)
            r.end = max_port;


        result += r.end - r.begin + 1;
    }

    return result;
}
