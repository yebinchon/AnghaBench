
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int val; } ;
struct TYPE_5__ {TYPE_1__ string; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;


 int Assert (int) ;
 scalar_t__ jbvString ;
 int lengthCompareJsonbString (int ,int ,int ,int ) ;

__attribute__((used)) static int
lengthCompareJsonbStringValue(const void *a, const void *b)
{
 const JsonbValue *va = (const JsonbValue *) a;
 const JsonbValue *vb = (const JsonbValue *) b;

 Assert(va->type == jbvString);
 Assert(vb->type == jbvString);

 return lengthCompareJsonbString(va->val.string.val, va->val.string.len,
         vb->val.string.val, vb->val.string.len);
}
