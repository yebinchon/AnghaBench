
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_5__ {scalar_t__* strip; TYPE_1__ analop; } ;
typedef TYPE_2__ RDisasmState ;


 char* r_anal_optype_to_string (int ) ;
 int strstr (scalar_t__*,char const*) ;

__attribute__((used)) static bool ds_must_strip(RDisasmState *ds) {
 if (ds && ds->strip && *ds->strip) {
  const char * optype = r_anal_optype_to_string (ds->analop.type);
  if (optype && *optype) {
   return strstr (ds->strip, optype);
  }
 }
 return 0;
}
