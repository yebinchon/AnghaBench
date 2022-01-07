
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* words; TYPE_3__* lines; } ;
typedef TYPE_2__ procfile ;
struct TYPE_10__ {int len; int size; TYPE_4__* lines; } ;
typedef TYPE_3__ pflines ;
struct TYPE_11__ {size_t words; int first; } ;
typedef TYPE_4__ ffline ;
struct TYPE_8__ {int len; } ;


 int PFLINES_INCREASE_STEP ;
 TYPE_3__* reallocz (TYPE_3__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline size_t *pflines_add(procfile *ff) {


    pflines *fl = ff->lines;
    if(unlikely(fl->len == fl->size)) {


        ff->lines = fl = reallocz(fl, sizeof(pflines) + (fl->size + PFLINES_INCREASE_STEP) * sizeof(ffline));
        fl->size += PFLINES_INCREASE_STEP;
    }

    ffline *ffl = &fl->lines[fl->len++];
    ffl->words = 0;
    ffl->first = ff->words->len;

    return &ffl->words;
}
