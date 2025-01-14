
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum jbvType { ____Placeholder_jbvType } jbvType ;
struct TYPE_6__ {int data; } ;
struct TYPE_7__ {TYPE_1__ binary; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;


 int Assert (int) ;
 int JsonContainerIsScalar (int ) ;
 scalar_t__ jbvBinary ;

__attribute__((used)) static JsonbValue *
getScalar(JsonbValue *scalar, enum jbvType type)
{

 Assert(scalar->type != jbvBinary ||
     !JsonContainerIsScalar(scalar->val.binary.data));

 return scalar->type == type ? scalar : ((void*)0);
}
