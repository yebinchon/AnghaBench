
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spiffs_page_ix ;
struct TYPE_4__ {int obj_id; } ;
typedef TYPE_1__ spiffs_page_header ;
typedef int spiffs ;
typedef int s32_t ;


 int SPIFFS_CHECK_RES (int ) ;
 int SPIFFS_DATA_PAGE_SIZE (int *) ;
 scalar_t__ SPIFFS_PAGE_TO_PADDR (int *,int ) ;
 int spiffs_page_allocate_data (int *,int ,TYPE_1__*,int ,int ,int ,int ,int *) ;
 int spiffs_phys_cpy (int *,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static s32_t spiffs_rewrite_page(spiffs *fs, spiffs_page_ix cur_pix, spiffs_page_header *p_hdr, spiffs_page_ix *new_pix) {
  s32_t res;
  res = spiffs_page_allocate_data(fs, p_hdr->obj_id, p_hdr, 0,0,0,0, new_pix);
  SPIFFS_CHECK_RES(res);
  res = spiffs_phys_cpy(fs, 0,
      SPIFFS_PAGE_TO_PADDR(fs, *new_pix) + sizeof(spiffs_page_header),
      SPIFFS_PAGE_TO_PADDR(fs, cur_pix) + sizeof(spiffs_page_header),
      SPIFFS_DATA_PAGE_SIZE(fs));
  SPIFFS_CHECK_RES(res);
  return res;
}
