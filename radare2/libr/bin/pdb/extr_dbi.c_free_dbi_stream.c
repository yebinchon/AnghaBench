
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* name; } ;
struct TYPE_6__ {TYPE_4__* name; } ;
struct TYPE_9__ {TYPE_2__ objName; TYPE_1__ modName; } ;
struct TYPE_8__ {int dbiexhdrs; } ;
typedef TYPE_3__ SDbiStream ;
typedef TYPE_4__ SDBIExHeader ;
typedef int RListIter ;


 int free (TYPE_4__*) ;
 int r_list_free (int ) ;
 scalar_t__ r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (int ) ;

__attribute__((used)) static void free_dbi_stream(void *stream) {
 SDbiStream *t = (SDbiStream *) stream;
 SDBIExHeader *dbi_ex_header = 0;

 RListIter *it = r_list_iterator(t->dbiexhdrs);
 while (r_list_iter_next(it)) {
  dbi_ex_header = (SDBIExHeader *) r_list_iter_get(it);
  free(dbi_ex_header->modName.name);
  free(dbi_ex_header->objName.name);
  free(dbi_ex_header);
 }
 r_list_free (t->dbiexhdrs);
}
