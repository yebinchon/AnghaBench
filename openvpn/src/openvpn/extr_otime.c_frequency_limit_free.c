
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frequency_limit {int dummy; } ;


 int free (struct frequency_limit*) ;

void
frequency_limit_free(struct frequency_limit *f)
{
    free(f);
}
