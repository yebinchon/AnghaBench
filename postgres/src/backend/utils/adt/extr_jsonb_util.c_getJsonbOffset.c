
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int * children; } ;
typedef TYPE_1__ JsonbContainer ;


 scalar_t__ JBE_HAS_OFF (int ) ;
 scalar_t__ JBE_OFFLENFLD (int ) ;

uint32
getJsonbOffset(const JsonbContainer *jc, int index)
{
 uint32 offset = 0;
 int i;






 for (i = index - 1; i >= 0; i--)
 {
  offset += JBE_OFFLENFLD(jc->children[i]);
  if (JBE_HAS_OFF(jc->children[i]))
   break;
 }

 return offset;
}
