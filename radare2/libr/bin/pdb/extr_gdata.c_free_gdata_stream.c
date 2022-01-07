
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int globals_list; } ;
struct TYPE_5__ {TYPE_2__* name; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
typedef TYPE_2__ SGlobal ;
typedef TYPE_3__ SGDATAStream ;
typedef int RListIter ;


 int free (TYPE_2__*) ;
 int r_list_free (int ) ;
 scalar_t__ r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (int ) ;

void free_gdata_stream(void *stream) {
 SGDATAStream *data_stream = (SGDATAStream *) stream;
 SGlobal *global = 0;
 RListIter *it = 0;

 it = r_list_iterator(data_stream->globals_list);
 while (r_list_iter_next(it)) {
  global = (SGlobal *) r_list_iter_get(it);
  if (global->name.name) {
   free (global->name.name);
  }
  free (global);
 }
 r_list_free (data_stream->globals_list);
}
