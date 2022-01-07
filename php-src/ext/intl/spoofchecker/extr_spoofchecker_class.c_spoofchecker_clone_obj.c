
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ce; } ;
typedef TYPE_1__ zend_object ;
struct TYPE_14__ {TYPE_1__* (* create_object ) (int ) ;} ;
struct TYPE_13__ {int zo; int uspoof; } ;
typedef TYPE_2__ Spoofchecker_object ;


 int E_ERROR ;
 int SPOOFCHECKER_ERROR_CODE (TYPE_2__*) ;
 int SPOOFCHECKER_ERROR_CODE_P (TYPE_2__*) ;
 int SPOOFCHECKER_ERROR_P (TYPE_2__*) ;
 TYPE_8__* Spoofchecker_ce_ptr ;
 int Spoofchecker_objects_free (int *) ;
 scalar_t__ U_FAILURE (int ) ;
 int intl_error_reset (int ) ;
 int intl_error_set (int *,int ,char*,int ) ;
 TYPE_2__* php_intl_spoofchecker_fetch_object (TYPE_1__*) ;
 TYPE_1__* stub1 (int ) ;
 int uspoof_clone (int ,int ) ;
 int zend_error (int ,char*) ;
 int zend_objects_clone_members (int *,int *) ;

__attribute__((used)) static zend_object *spoofchecker_clone_obj(zend_object *object)
{
 zend_object *new_obj_val;
 Spoofchecker_object *sfo, *new_sfo;

    sfo = php_intl_spoofchecker_fetch_object(object);
    intl_error_reset(SPOOFCHECKER_ERROR_P(sfo));

 new_obj_val = Spoofchecker_ce_ptr->create_object(object->ce);
 new_sfo = php_intl_spoofchecker_fetch_object(new_obj_val);

 zend_objects_clone_members(&new_sfo->zo, &sfo->zo);

 new_sfo->uspoof = uspoof_clone(sfo->uspoof, SPOOFCHECKER_ERROR_CODE_P(new_sfo));
 if(U_FAILURE(SPOOFCHECKER_ERROR_CODE(new_sfo))) {

  intl_error_set( ((void*)0), SPOOFCHECKER_ERROR_CODE(new_sfo), "Failed to clone SpoofChecker object", 0 );
  Spoofchecker_objects_free(&new_sfo->zo);
  zend_error(E_ERROR, "Failed to clone SpoofChecker object");
 }
 return new_obj_val;
}
