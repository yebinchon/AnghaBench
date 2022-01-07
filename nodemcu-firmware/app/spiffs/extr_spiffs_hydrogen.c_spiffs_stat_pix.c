
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u32_t ;
struct TYPE_4__ {int obj_id; scalar_t__ size; int meta; scalar_t__ name; int pix; int type; } ;
typedef TYPE_1__ spiffs_stat ;
struct TYPE_5__ {scalar_t__ size; int meta; scalar_t__ name; int type; } ;
typedef TYPE_2__ spiffs_page_object_ix_header ;
typedef int spiffs_page_ix ;
typedef int spiffs_obj_id ;
typedef int spiffs_file ;
typedef int spiffs ;
typedef int s32_t ;


 int SPIFFS_API_CHECK_RES (int *,int ) ;
 int SPIFFS_BLOCK_FOR_PAGE (int *,int ) ;
 scalar_t__ SPIFFS_BLOCK_TO_PADDR (int *,int ) ;
 int SPIFFS_OBJ_ID_IX_FLAG ;
 int SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE (int *,int ) ;
 int SPIFFS_OBJ_META_LEN ;
 int SPIFFS_OBJ_NAME_LEN ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_T_OBJ_IX ;
 int SPIFFS_OP_T_OBJ_LU ;
 scalar_t__ SPIFFS_PAGE_TO_PADDR (int *,int ) ;
 scalar_t__ SPIFFS_UNDEFINED_LEN ;
 int _SPIFFS_MEMCPY (int ,int ,int ) ;
 int _spiffs_rd (int *,int,int ,scalar_t__,int,int *) ;
 int strncpy (char*,char*,int ) ;

__attribute__((used)) static s32_t spiffs_stat_pix(spiffs *fs, spiffs_page_ix pix, spiffs_file fh, spiffs_stat *s) {
  (void)fh;
  spiffs_page_object_ix_header objix_hdr;
  spiffs_obj_id obj_id;
  s32_t res =_spiffs_rd(fs, SPIFFS_OP_T_OBJ_IX | SPIFFS_OP_C_READ, fh,
      SPIFFS_PAGE_TO_PADDR(fs, pix), sizeof(spiffs_page_object_ix_header), (u8_t *)&objix_hdr);
  SPIFFS_API_CHECK_RES(fs, res);

  u32_t obj_id_addr = SPIFFS_BLOCK_TO_PADDR(fs, SPIFFS_BLOCK_FOR_PAGE(fs , pix)) +
      SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE(fs, pix) * sizeof(spiffs_obj_id);
  res =_spiffs_rd(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_READ, fh,
      obj_id_addr, sizeof(spiffs_obj_id), (u8_t *)&obj_id);
  SPIFFS_API_CHECK_RES(fs, res);

  s->obj_id = obj_id & ~SPIFFS_OBJ_ID_IX_FLAG;
  s->type = objix_hdr.type;
  s->size = objix_hdr.size == SPIFFS_UNDEFINED_LEN ? 0 : objix_hdr.size;
  s->pix = pix;
  strncpy((char *)s->name, (char *)objix_hdr.name, SPIFFS_OBJ_NAME_LEN);




  return res;
}
