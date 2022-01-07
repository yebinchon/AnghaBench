
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; scalar_t__ len; } ;
typedef TYPE_1__ pflines ;
typedef int ffline ;


 size_t PFLINES_INCREASE_STEP ;
 TYPE_1__* mallocz (int) ;
 int procfile_adaptive_initial_allocation ;
 size_t procfile_max_words ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline pflines *pflines_new(void) {


    size_t size = (unlikely(procfile_adaptive_initial_allocation)) ? procfile_max_words : PFLINES_INCREASE_STEP;

    pflines *new = mallocz(sizeof(pflines) + size * sizeof(ffline));
    new->len = 0;
    new->size = size;
    return new;
}
