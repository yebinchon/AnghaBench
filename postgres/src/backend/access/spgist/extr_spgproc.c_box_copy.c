
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOX ;


 int * palloc (int) ;

BOX *
box_copy(BOX *orig)
{
 BOX *result = palloc(sizeof(BOX));

 *result = *orig;
 return result;
}
