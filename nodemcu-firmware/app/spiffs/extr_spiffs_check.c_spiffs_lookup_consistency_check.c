
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int spiffs ;
typedef scalar_t__ s32_t ;


 int CHECK_CB (int *,int ,int ,int,int ) ;
 int SPIFFS_CHECK_ERROR ;
 int SPIFFS_CHECK_LOOKUP ;
 int SPIFFS_CHECK_PROGRESS ;
 scalar_t__ SPIFFS_OK ;
 scalar_t__ SPIFFS_VIS_END ;
 int spiffs_lookup_check_v ;
 scalar_t__ spiffs_obj_lu_find_entry_visitor (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

s32_t spiffs_lookup_consistency_check(spiffs *fs, u8_t check_all_objects) {
  (void)check_all_objects;
  s32_t res = SPIFFS_OK;

  CHECK_CB(fs, SPIFFS_CHECK_LOOKUP, SPIFFS_CHECK_PROGRESS, 0, 0);

  res = spiffs_obj_lu_find_entry_visitor(fs, 0, 0, 0, 0, spiffs_lookup_check_v, 0, 0, 0, 0);

  if (res == SPIFFS_VIS_END) {
    res = SPIFFS_OK;
  }

  if (res != SPIFFS_OK) {
    CHECK_CB(fs, SPIFFS_CHECK_LOOKUP, SPIFFS_CHECK_ERROR, res, 0);
  }

  CHECK_CB(fs, SPIFFS_CHECK_LOOKUP, SPIFFS_CHECK_PROGRESS, 256, 0);

  return res;
}
