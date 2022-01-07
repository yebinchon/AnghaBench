
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int env; } ;
typedef TYPE_1__ fcgi_request ;
typedef int fcgi_apply_func ;


 int fcgi_hash_apply (int *,int ,int *) ;

void fcgi_loadenv(fcgi_request *req, fcgi_apply_func func, zval *array)
{
 fcgi_hash_apply(&req->env, func, array);
}
