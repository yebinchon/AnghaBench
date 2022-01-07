
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
struct pageline {scalar_t__* free_pages_size; } ;


 size_t MAX_PAGETYPE_ORDER ;

__attribute__((used)) static inline uint64_t pageline_total_count(struct pageline *p) {
    uint64_t sum = 0, o;
    for (o=0; o<MAX_PAGETYPE_ORDER; o++)
        sum += p->free_pages_size[o];
    return sum;
}
