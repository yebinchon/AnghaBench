
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r_bin_java_obj_t {int dummy; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef TYPE_2__ RBinFile ;


 int * DB ;
 int r_bin_java_free (struct r_bin_java_obj_t*) ;
 int sdb_free (int *) ;

__attribute__((used)) static void destroy(RBinFile *bf) {
 r_bin_java_free ((struct r_bin_java_obj_t *) bf->o->bin_obj);
 sdb_free (DB);
 DB = ((void*)0);
}
