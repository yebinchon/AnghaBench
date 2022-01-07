
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spiffs ;
typedef scalar_t__ s32_t ;


 int CHECK_CB (int *,int ,int ,int,int ) ;
 int SPIFFS_CHECK_ERROR ;
 int SPIFFS_CHECK_PAGE ;
 int SPIFFS_CHECK_PROGRESS ;
 scalar_t__ SPIFFS_OK ;
 scalar_t__ spiffs_page_consistency_check_i (int *) ;

s32_t spiffs_page_consistency_check(spiffs *fs) {
  CHECK_CB(fs, SPIFFS_CHECK_PAGE, SPIFFS_CHECK_PROGRESS, 0, 0);
  s32_t res = spiffs_page_consistency_check_i(fs);
  if (res != SPIFFS_OK) {
    CHECK_CB(fs, SPIFFS_CHECK_PAGE, SPIFFS_CHECK_ERROR, res, 0);
  }
  CHECK_CB(fs, SPIFFS_CHECK_PAGE, SPIFFS_CHECK_PROGRESS, 256, 0);
  return res;
}
