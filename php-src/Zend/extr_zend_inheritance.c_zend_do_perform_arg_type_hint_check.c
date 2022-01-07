
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int scope; } ;
struct TYPE_9__ {TYPE_1__ common; } ;
typedef TYPE_2__ zend_function ;
struct TYPE_10__ {int type; } ;
typedef TYPE_3__ zend_arg_info ;
typedef int inheritance_status ;


 int INHERITANCE_ERROR ;
 int INHERITANCE_SUCCESS ;
 int ZEND_TYPE_IS_SET (int ) ;
 int zend_perform_covariant_type_check (int ,int ,int ,int ) ;

__attribute__((used)) static inheritance_status zend_do_perform_arg_type_hint_check(
  const zend_function *fe, zend_arg_info *fe_arg_info,
  const zend_function *proto, zend_arg_info *proto_arg_info)
{
 if (!ZEND_TYPE_IS_SET(fe_arg_info->type)) {

  return INHERITANCE_SUCCESS;
 }

 if (!ZEND_TYPE_IS_SET(proto_arg_info->type)) {

  return INHERITANCE_ERROR;
 }



 return zend_perform_covariant_type_check(
  proto->common.scope, proto_arg_info->type, fe->common.scope, fe_arg_info->type);
}
