
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* sdlParamPtr ;
struct TYPE_4__ {struct TYPE_4__* paramName; } ;


 TYPE_1__* Z_PTR_P (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void delete_parameter_persistent(zval *zv)
{
 sdlParamPtr param = Z_PTR_P(zv);
 if (param->paramName) {
  free(param->paramName);
 }
 free(param);
}
