
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int env; } ;
typedef TYPE_1__ fcgi_request ;


 int fcgi_hash_del (int *,unsigned int,char*,int) ;
 char* fcgi_hash_set (int *,unsigned int,char*,int,char*,unsigned int) ;
 scalar_t__ strlen (char*) ;

char* fcgi_quick_putenv(fcgi_request *req, char* var, int var_len, unsigned int hash_value, char* val)
{
 if (val == ((void*)0)) {
  fcgi_hash_del(&req->env, hash_value, var, var_len);
  return ((void*)0);
 } else {
  return fcgi_hash_set(&req->env, hash_value, var, var_len, val, (unsigned int)strlen(val));
 }
}
