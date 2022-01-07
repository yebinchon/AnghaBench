
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* free; } ;
struct TYPE_5__ {TYPE_2__* referenced_functions; TYPE_2__* tail_bytes; TYPE_2__* public_functions; } ;
typedef void* RListFree ;
typedef TYPE_1__ RFlirtModule ;


 int free (TYPE_1__*) ;
 int r_list_free (TYPE_2__*) ;

__attribute__((used)) static void module_free(RFlirtModule *module) {
 if (!module) {
  return;
 }
 if (module->public_functions) {
  module->public_functions->free = (RListFree) free;
  r_list_free (module->public_functions);
 }
 if (module->tail_bytes) {
  module->tail_bytes->free = (RListFree) free;
  r_list_free (module->tail_bytes);
 }
 if (module->referenced_functions) {
  module->referenced_functions->free = (RListFree) free;
  r_list_free (module->referenced_functions);
 }
 free (module);
}
