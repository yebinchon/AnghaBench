
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int env; } ;
typedef TYPE_1__ fcgi_request ;


 char* fcgi_hash_get (int *,unsigned int,char*,int,unsigned int*) ;

char* fcgi_quick_getenv(fcgi_request *req, const char* var, int var_len, unsigned int hash_value)
{
 unsigned int val_len;

 return fcgi_hash_get(&req->env, hash_value, (char*)var, var_len, &val_len);
}
