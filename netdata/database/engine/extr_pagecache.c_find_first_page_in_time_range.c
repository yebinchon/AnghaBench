
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct rrdeng_page_descr {int dummy; } ;
struct pg_cache_page_index {int JudyL_array; } ;
typedef scalar_t__ Word_t ;
typedef struct rrdeng_page_descr* Pvoid_t ;


 struct rrdeng_page_descr** JudyLFirst (int ,scalar_t__*,int ) ;
 struct rrdeng_page_descr** JudyLLast (int ,scalar_t__*,int ) ;
 int PJE0 ;
 int USEC_PER_SEC ;
 scalar_t__ is_page_in_time_range (struct rrdeng_page_descr*,int,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline struct rrdeng_page_descr *
        find_first_page_in_time_range(struct pg_cache_page_index *page_index, usec_t start_time, usec_t end_time)
{
    struct rrdeng_page_descr *descr = ((void*)0);
    Pvoid_t *PValue;
    Word_t Index;

    Index = (Word_t)(start_time / USEC_PER_SEC);
    PValue = JudyLLast(page_index->JudyL_array, &Index, PJE0);
    if (likely(((void*)0) != PValue)) {
        descr = *PValue;
        if (is_page_in_time_range(descr, start_time, end_time)) {
            return descr;
        }
    }

    Index = (Word_t)(start_time / USEC_PER_SEC);
    PValue = JudyLFirst(page_index->JudyL_array, &Index, PJE0);
    if (likely(((void*)0) != PValue)) {
        descr = *PValue;
        if (is_page_in_time_range(descr, start_time, end_time)) {
            return descr;
        }
    }

    return ((void*)0);
}
