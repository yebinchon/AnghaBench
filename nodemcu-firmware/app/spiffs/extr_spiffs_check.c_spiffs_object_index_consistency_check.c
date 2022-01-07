
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32_t ;
struct TYPE_6__ {int work; } ;
typedef TYPE_1__ spiffs ;
typedef scalar_t__ s32_t ;


 int CHECK_CB (TYPE_1__*,int ,int ,int,int ) ;
 int SPIFFS_CFG_LOG_PAGE_SZ (TYPE_1__*) ;
 int SPIFFS_CHECK_ERROR ;
 int SPIFFS_CHECK_INDEX ;
 int SPIFFS_CHECK_PROGRESS ;
 scalar_t__ SPIFFS_OK ;
 scalar_t__ SPIFFS_VIS_END ;
 int memset (int ,int ,int ) ;
 scalar_t__ spiffs_obj_lu_find_entry_visitor (TYPE_1__*,int ,int ,int ,int ,int ,int ,int *,int ,int ) ;
 int spiffs_object_index_consistency_check_v ;

s32_t spiffs_object_index_consistency_check(spiffs *fs) {
  s32_t res = SPIFFS_OK;





  memset(fs->work, 0, SPIFFS_CFG_LOG_PAGE_SZ(fs));
  u32_t obj_id_log_ix = 0;
  CHECK_CB(fs, SPIFFS_CHECK_INDEX, SPIFFS_CHECK_PROGRESS, 0, 0);
  res = spiffs_obj_lu_find_entry_visitor(fs, 0, 0, 0, 0, spiffs_object_index_consistency_check_v, 0, &obj_id_log_ix,
        0, 0);
  if (res == SPIFFS_VIS_END) {
    res = SPIFFS_OK;
  }
  if (res != SPIFFS_OK) {
    CHECK_CB(fs, SPIFFS_CHECK_INDEX, SPIFFS_CHECK_ERROR, res, 0);
  }
  CHECK_CB(fs, SPIFFS_CHECK_INDEX, SPIFFS_CHECK_PROGRESS, 256, 0);
  return res;
}
