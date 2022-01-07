
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8_t ;
typedef int spiffs_page_ix ;
typedef int spiffs_obj_id ;
struct TYPE_9__ {int stats_p_allocated; int stats_p_deleted; } ;
typedef TYPE_1__ spiffs ;
typedef int s32_t ;
typedef int flags ;


 int SPIFFS_BLOCK_FOR_PAGE (TYPE_1__*,int ) ;
 scalar_t__ SPIFFS_BLOCK_TO_PADDR (TYPE_1__*,int ) ;
 int SPIFFS_CHECK_RES (int ) ;
 int SPIFFS_OBJ_ID_DELETED ;
 int SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE (TYPE_1__*,int ) ;
 int SPIFFS_OP_C_DELE ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_T_OBJ_DA ;
 int SPIFFS_OP_T_OBJ_LU ;
 scalar_t__ SPIFFS_PAGE_TO_PADDR (TYPE_1__*,int ) ;
 int SPIFFS_PH_FLAG_DELET ;
 int SPIFFS_PH_FLAG_USED ;
 int _spiffs_rd (TYPE_1__*,int,int ,scalar_t__,int,int*) ;
 int _spiffs_wr (TYPE_1__*,int,int ,scalar_t__,int,int*) ;
 scalar_t__ offsetof (int ,int) ;
 int spiffs_page_header ;

s32_t spiffs_page_delete(
    spiffs *fs,
    spiffs_page_ix pix) {
  s32_t res;

  spiffs_obj_id d_obj_id = SPIFFS_OBJ_ID_DELETED;
  res = _spiffs_wr(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_DELE,
      0,
      SPIFFS_BLOCK_TO_PADDR(fs, SPIFFS_BLOCK_FOR_PAGE(fs, pix)) + SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE(fs, pix) * sizeof(spiffs_page_ix),
      sizeof(spiffs_obj_id),
      (u8_t *)&d_obj_id);
  SPIFFS_CHECK_RES(res);

  fs->stats_p_deleted++;
  fs->stats_p_allocated--;


  u8_t flags = 0xff;






  flags &= ~(SPIFFS_PH_FLAG_DELET | SPIFFS_PH_FLAG_USED);
  res = _spiffs_wr(fs, SPIFFS_OP_T_OBJ_DA | SPIFFS_OP_C_DELE,
      0,
      SPIFFS_PAGE_TO_PADDR(fs, pix) + offsetof(spiffs_page_header, flags),
      sizeof(flags), &flags);

  return res;
}
