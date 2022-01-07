
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeType ;


 char RANGE_CONTAIN_EMPTY ;
 int VARSIZE (int *) ;

void
range_set_contain_empty(RangeType *range)
{
 char *flagsp;


 flagsp = (char *) range + VARSIZE(range) - 1;

 *flagsp |= RANGE_CONTAIN_EMPTY;
}
