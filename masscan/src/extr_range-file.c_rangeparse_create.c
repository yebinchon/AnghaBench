
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeParser {int line_number; } ;


 struct RangeParser* CALLOC (int,int) ;

__attribute__((used)) static struct RangeParser *
rangeparse_create(void)
{
    struct RangeParser *result;

    result = CALLOC(1, sizeof(*result));
    result->line_number = 1;
    return result;
}
