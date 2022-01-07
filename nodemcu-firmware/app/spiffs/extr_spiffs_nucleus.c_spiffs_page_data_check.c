
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
typedef int spiffs_span_ix ;
typedef int spiffs_page_ix ;
typedef int spiffs_page_header ;
struct TYPE_3__ {int obj_id; int file_nbr; } ;
typedef TYPE_1__ spiffs_fd ;
typedef int spiffs ;
typedef int s32_t ;


 int SPIFFS_CHECK_RES (int ) ;
 int SPIFFS_ERR_INDEX_REF_FREE ;
 int SPIFFS_ERR_INDEX_REF_INVALID ;
 int SPIFFS_ERR_INDEX_REF_LU ;
 int SPIFFS_MAX_PAGES (int *) ;
 int SPIFFS_OBJ_ID_IX_FLAG ;
 int SPIFFS_OBJ_LOOKUP_PAGES (int *) ;
 int SPIFFS_OK ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_T_OBJ_DA ;
 int SPIFFS_PAGES_PER_BLOCK (int *) ;
 int SPIFFS_PAGE_TO_PADDR (int *,int) ;
 int SPIFFS_VALIDATE_DATA (int ,int,int ) ;
 int _spiffs_rd (int *,int,int ,int ,int,int *) ;

__attribute__((used)) static s32_t spiffs_page_data_check(spiffs *fs, spiffs_fd *fd, spiffs_page_ix pix, spiffs_span_ix spix) {
  s32_t res = SPIFFS_OK;
  if (pix == (spiffs_page_ix)-1) {

    return SPIFFS_ERR_INDEX_REF_FREE;
  }
  if (pix % SPIFFS_PAGES_PER_BLOCK(fs) < SPIFFS_OBJ_LOOKUP_PAGES(fs)) {

    return SPIFFS_ERR_INDEX_REF_LU;
  }
  if (pix > SPIFFS_MAX_PAGES(fs)) {

    return SPIFFS_ERR_INDEX_REF_INVALID;
  }
  return res;
}
