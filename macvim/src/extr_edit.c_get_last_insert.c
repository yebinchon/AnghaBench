
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int * last_insert ;
 int last_insert_skip ;

char_u *
get_last_insert()
{
    if (last_insert == ((void*)0))
 return ((void*)0);
    return last_insert + last_insert_skip;
}
