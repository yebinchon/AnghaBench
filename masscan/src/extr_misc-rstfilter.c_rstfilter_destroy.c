
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ResetFilter {struct ResetFilter* buckets; } ;


 int free (struct ResetFilter*) ;

void
rstfilter_destroy(struct ResetFilter *rf)
{
    if (rf == ((void*)0))
        return;
    free(rf->buckets);
    free(rf);
}
