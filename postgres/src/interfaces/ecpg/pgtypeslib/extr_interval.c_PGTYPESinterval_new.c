
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int interval ;


 scalar_t__ pgtypes_alloc (int) ;

interval *
PGTYPESinterval_new(void)
{
 interval *result;

 result = (interval *) pgtypes_alloc(sizeof(interval));

 return result;
}
