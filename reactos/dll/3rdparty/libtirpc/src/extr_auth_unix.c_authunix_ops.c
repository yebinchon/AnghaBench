
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_ops {void* ah_unwrap; void* ah_wrap; int ah_destroy; int ah_refresh; int ah_validate; int ah_marshal; int * ah_nextverf; } ;
typedef int mutex_t ;


 int authunix_destroy ;
 int authunix_marshal ;
 int * authunix_nextverf ;
 int authunix_refresh ;
 void* authunix_unwrap ;
 int authunix_validate ;
 void* authunix_wrap ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct auth_ops *
authunix_ops()
{
 static struct auth_ops ops;
 extern mutex_t ops_lock;



 mutex_lock(&ops_lock);
 if (ops.ah_nextverf == ((void*)0)) {
  ops.ah_nextverf = authunix_nextverf;
  ops.ah_marshal = authunix_marshal;
  ops.ah_validate = authunix_validate;
  ops.ah_refresh = authunix_refresh;
  ops.ah_destroy = authunix_destroy;
  ops.ah_wrap = authunix_wrap;

  ops.ah_unwrap = authunix_wrap;



 }
 mutex_unlock(&ops_lock);
 return (&ops);
}
