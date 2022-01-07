
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeParser {int dummy; } ;


 int free (struct RangeParser*) ;

__attribute__((used)) static void
rangeparse_destroy(struct RangeParser *p)
{
    free(p);
}
