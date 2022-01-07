
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_entry {int matchlen; int size; } ;
typedef int off_t ;


 int FFSIGN (int) ;

__attribute__((used)) static int cmp_entry(const void *pa, const void *pb)
{
    const struct find_entry *a = pa, *b = pb;

    int matchdiff = b->matchlen - a->matchlen;
    if (matchdiff)
        return FFSIGN(matchdiff);

    off_t sizediff = a->size - b->size;
    if (sizediff)
        return FFSIGN(sizediff);
    return 0;
}
