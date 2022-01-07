
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int * file_name; } ;
typedef TYPE_1__ SCV_NB10_HEADER ;


 int memcpy (TYPE_1__*,int *,int const) ;
 scalar_t__ strdup (char const*) ;

__attribute__((used)) static void get_nb10(ut8* dbg_data, int dbg_data_len, SCV_NB10_HEADER* res) {
 const int nb10sz = 16;
 if (dbg_data_len < nb10sz) {
  return;
 }
 memcpy (res, dbg_data, nb10sz);
 res->file_name = (ut8*) strdup ((const char*) dbg_data + nb10sz);
}
