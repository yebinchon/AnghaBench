
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {int * children; } ;
typedef TYPE_1__ JsonbContainer ;


 scalar_t__ JBE_HAS_OFF (int ) ;
 scalar_t__ JBE_OFFLENFLD (int ) ;
 scalar_t__ getJsonbOffset (TYPE_1__ const*,int) ;

uint32
getJsonbLength(const JsonbContainer *jc, int index)
{
 uint32 off;
 uint32 len;






 if (JBE_HAS_OFF(jc->children[index]))
 {
  off = getJsonbOffset(jc, index);
  len = JBE_OFFLENFLD(jc->children[index]) - off;
 }
 else
  len = JBE_OFFLENFLD(jc->children[index]);

 return len;
}
