
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; scalar_t__ len; } ;
typedef TYPE_1__ pfwords ;


 size_t PFWORDS_INCREASE_STEP ;
 TYPE_1__* mallocz (int) ;
 scalar_t__ procfile_adaptive_initial_allocation ;
 size_t procfile_max_words ;

__attribute__((used)) static inline pfwords *pfwords_new(void) {


    size_t size = (procfile_adaptive_initial_allocation) ? procfile_max_words : PFWORDS_INCREASE_STEP;

    pfwords *new = mallocz(sizeof(pfwords) + size * sizeof(char *));
    new->len = 0;
    new->size = size;
    return new;
}
