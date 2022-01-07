
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_ops {int ah_unwrap; int ah_wrap; int ah_destroy; int ah_refresh; int ah_validate; int ah_marshal; int * ah_nextverf; } ;
typedef int mutex_t ;


 int authnone_destroy ;
 int authnone_marshal ;
 int authnone_refresh ;
 int authnone_unwrap ;
 int authnone_validate ;
 int * authnone_verf ;
 int authnone_wrap ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct auth_ops *
authnone_ops()
{
 static struct auth_ops ops;
 extern mutex_t ops_lock;



 mutex_lock(&ops_lock);
 if (ops.ah_nextverf == ((void*)0)) {
  ops.ah_nextverf = authnone_verf;
  ops.ah_marshal = authnone_marshal;
  ops.ah_validate = authnone_validate;
  ops.ah_refresh = authnone_refresh;
  ops.ah_destroy = authnone_destroy;
        ops.ah_wrap = authnone_wrap;
        ops.ah_unwrap = authnone_unwrap;
 }
 mutex_unlock(&ops_lock);
 return (&ops);
}
