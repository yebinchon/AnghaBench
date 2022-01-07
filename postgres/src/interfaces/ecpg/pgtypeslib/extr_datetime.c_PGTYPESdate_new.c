
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 scalar_t__ pgtypes_alloc (int) ;

date *
PGTYPESdate_new(void)
{
 date *result;

 result = (date *) pgtypes_alloc(sizeof(date));

 return result;
}
