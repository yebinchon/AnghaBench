
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DedupTable {int dummy; } ;


 struct DedupTable* CALLOC (int,int) ;

struct DedupTable *
dedup_create(void)
{
    struct DedupTable *result;

    result = CALLOC(1, sizeof(*result));

    return result;
}
