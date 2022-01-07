
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int timelib_get_nr_ex (char**,int,int *) ;

__attribute__((used)) static timelib_sll timelib_get_nr(char **ptr, int max_length)
{
 return timelib_get_nr_ex(ptr, max_length, ((void*)0));
}
