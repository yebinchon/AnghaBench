
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_integer_t ;


 int jsonp_free (int *) ;

__attribute__((used)) static void json_delete_integer(json_integer_t *integer)
{
    jsonp_free(integer);
}
