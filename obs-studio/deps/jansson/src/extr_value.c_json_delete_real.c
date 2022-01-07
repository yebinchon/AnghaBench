
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_real_t ;


 int jsonp_free (int *) ;

__attribute__((used)) static void json_delete_real(json_real_t *real)
{
    jsonp_free(real);
}
