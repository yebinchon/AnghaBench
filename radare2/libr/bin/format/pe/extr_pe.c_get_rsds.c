
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int * file_name; } ;
typedef int SGUID ;
typedef TYPE_1__ SCV_RSDS_HEADER ;


 int memcpy (TYPE_1__*,int *,int const) ;
 scalar_t__ strdup (char const*) ;

__attribute__((used)) static bool get_rsds(ut8* dbg_data, int dbg_data_len, SCV_RSDS_HEADER* res) {
 const int rsds_sz = 4 + sizeof (SGUID) + 4;
 if (dbg_data_len < rsds_sz) {
  return 0;
 }
 memcpy (res, dbg_data, rsds_sz);
 res->file_name = (ut8*) strdup ((const char*) dbg_data + rsds_sz);
 return 1;
}
