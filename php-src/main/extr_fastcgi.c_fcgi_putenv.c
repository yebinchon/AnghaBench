
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int env; } ;
typedef TYPE_1__ fcgi_request ;


 int FCGI_HASH_FUNC (char*,int) ;
 int fcgi_hash_del (int *,int ,char*,int) ;
 char* fcgi_hash_set (int *,int ,char*,int,char*,unsigned int) ;
 scalar_t__ strlen (char*) ;

char* fcgi_putenv(fcgi_request *req, char* var, int var_len, char* val)
{
 if (!req) return ((void*)0);
 if (val == ((void*)0)) {
  fcgi_hash_del(&req->env, FCGI_HASH_FUNC(var, var_len), var, var_len);
  return ((void*)0);
 } else {
  return fcgi_hash_set(&req->env, FCGI_HASH_FUNC(var, var_len), var, var_len, val, (unsigned int)strlen(val));
 }
}
