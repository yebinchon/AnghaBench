
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_13__ {int * children; } ;
struct TYPE_10__ {int len; TYPE_5__* data; } ;
struct TYPE_9__ {char* val; int len; } ;
struct TYPE_11__ {int boolean; TYPE_2__ binary; scalar_t__ numeric; TYPE_1__ string; } ;
struct TYPE_12__ {TYPE_3__ val; void* type; } ;
typedef scalar_t__ Numeric ;
typedef TYPE_4__ JsonbValue ;
typedef TYPE_5__ JsonbContainer ;
typedef int JEntry ;


 int Assert (int) ;
 int INTALIGN (int) ;
 scalar_t__ JBE_ISBOOL_FALSE (int ) ;
 scalar_t__ JBE_ISBOOL_TRUE (int ) ;
 int JBE_ISCONTAINER (int ) ;
 scalar_t__ JBE_ISNULL (int ) ;
 scalar_t__ JBE_ISNUMERIC (int ) ;
 scalar_t__ JBE_ISSTRING (int ) ;
 int getJsonbLength (TYPE_5__*,int) ;
 void* jbvBinary ;
 void* jbvBool ;
 void* jbvNull ;
 void* jbvNumeric ;
 void* jbvString ;

__attribute__((used)) static void
fillJsonbValue(JsonbContainer *container, int index,
      char *base_addr, uint32 offset,
      JsonbValue *result)
{
 JEntry entry = container->children[index];

 if (JBE_ISNULL(entry))
 {
  result->type = jbvNull;
 }
 else if (JBE_ISSTRING(entry))
 {
  result->type = jbvString;
  result->val.string.val = base_addr + offset;
  result->val.string.len = getJsonbLength(container, index);
  Assert(result->val.string.len >= 0);
 }
 else if (JBE_ISNUMERIC(entry))
 {
  result->type = jbvNumeric;
  result->val.numeric = (Numeric) (base_addr + INTALIGN(offset));
 }
 else if (JBE_ISBOOL_TRUE(entry))
 {
  result->type = jbvBool;
  result->val.boolean = 1;
 }
 else if (JBE_ISBOOL_FALSE(entry))
 {
  result->type = jbvBool;
  result->val.boolean = 0;
 }
 else
 {
  Assert(JBE_ISCONTAINER(entry));
  result->type = jbvBinary;

  result->val.binary.data = (JsonbContainer *) (base_addr + INTALIGN(offset));
  result->val.binary.len = getJsonbLength(container, index) -
   (INTALIGN(offset) - offset);
 }
}
