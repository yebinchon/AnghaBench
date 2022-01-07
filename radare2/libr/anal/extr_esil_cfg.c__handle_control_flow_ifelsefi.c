
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_6__ {int atoms; } ;
typedef TYPE_1__ EsilCfgGen ;


 int _handle_else_enter (TYPE_1__*,scalar_t__,int) ;
 int _handle_fi_leave (TYPE_1__*,scalar_t__,int) ;
 int _handle_if_enter (TYPE_1__*,scalar_t__,int) ;
 int r_id_storage_get (int ,scalar_t__) ;
 int strcmp (char*,char*) ;

void _handle_control_flow_ifelsefi (EsilCfgGen *gen, char *atom, ut32 id) {


 if (!strcmp (atom, "?{")) {
  _handle_if_enter (gen, id, !!r_id_storage_get (gen->atoms, id + 1));
  return;
 }
 if (!strcmp (atom, "}")) {
  _handle_fi_leave (gen, id, !!r_id_storage_get (gen->atoms, id + 1));
  return;
 }
 if (!strcmp (atom, "}{")) {
  _handle_else_enter (gen, id, !!r_id_storage_get (gen->atoms, id + 1));
 }
}
