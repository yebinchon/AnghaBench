
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct r_bin_java_obj_t {int file; } ;
struct TYPE_3__ {scalar_t__ file; } ;
typedef int Sdb ;
typedef int RBuffer ;
typedef TYPE_1__ RBinFile ;


 int add_bin_obj_to_sdb (struct r_bin_java_obj_t*) ;
 struct r_bin_java_obj_t* r_bin_java_new_buf (int *,int ,int *) ;
 int r_buf_free (int *) ;
 int * r_buf_ref (int *) ;
 int strdup (scalar_t__) ;

__attribute__((used)) static bool load_buffer(RBinFile * bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
 struct r_bin_java_obj_t *tmp_bin_obj = ((void*)0);
 RBuffer *tbuf = r_buf_ref (buf);
 tmp_bin_obj = r_bin_java_new_buf (tbuf, loadaddr, sdb);
 if (!tmp_bin_obj) {
  return 0;
 }
 *bin_obj = tmp_bin_obj;
 add_bin_obj_to_sdb (tmp_bin_obj);
 if (bf && bf->file) {
  tmp_bin_obj->file = strdup (bf->file);
 }
 r_buf_free (tbuf);
 return 1;
}
