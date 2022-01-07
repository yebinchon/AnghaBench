
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* words; } ;
typedef TYPE_1__ procfile ;
struct TYPE_7__ {int len; int size; char** words; } ;
typedef TYPE_2__ pfwords ;


 int PFWORDS_INCREASE_STEP ;
 TYPE_2__* reallocz (TYPE_2__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void pfwords_add(procfile *ff, char *str) {


    pfwords *fw = ff->words;
    if(unlikely(fw->len == fw->size)) {


        ff->words = fw = reallocz(fw, sizeof(pfwords) + (fw->size + PFWORDS_INCREASE_STEP) * sizeof(char *));
        fw->size += PFWORDS_INCREASE_STEP;
    }

    fw->words[fw->len++] = str;
}
