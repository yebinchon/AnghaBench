
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* init ) () ;int (* deinit ) () ;} ;
typedef TYPE_1__ io_backend_t ;


 TYPE_1__** io_backends ;
 TYPE_1__* sel_backend ;
 int stub1 () ;
 int stub2 () ;

int iob_select(const char *name) {
 io_backend_t *iob;

 iob = io_backends[0];

 if (!iob) {
  return 0;
 }

 if (sel_backend && sel_backend->deinit) {
  sel_backend->deinit ();
 }

 sel_backend = iob;

 if (sel_backend->init) {
  sel_backend->init ();
 }

 return 1;
}
