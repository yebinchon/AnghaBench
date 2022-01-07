
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int ut32 ;
typedef int RIODesc ;


 scalar_t__ fdsz ;
 scalar_t__ r_io_desc_size (int *) ;

__attribute__((used)) static bool init_desc_list_visual_cb(void *user, void *data, ut32 id) {
 RIODesc *desc = (RIODesc *)data;
 ut64 sz = r_io_desc_size (desc);
 if (sz > fdsz) {
  fdsz = sz;
 }
 return 1;
}
