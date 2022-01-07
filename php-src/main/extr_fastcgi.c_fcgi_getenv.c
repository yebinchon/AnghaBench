
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int env; } ;
typedef TYPE_1__ fcgi_request ;


 int FCGI_HASH_FUNC (char const*,int) ;
 char* fcgi_hash_get (int *,int ,char*,int,unsigned int*) ;

char* fcgi_getenv(fcgi_request *req, const char* var, int var_len)
{
 unsigned int val_len;

 if (!req) return ((void*)0);

 return fcgi_hash_get(&req->env, FCGI_HASH_FUNC(var, var_len), (char*)var, var_len, &val_len);
}
