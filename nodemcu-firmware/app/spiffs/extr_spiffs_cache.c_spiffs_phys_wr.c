
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8_t ;
typedef int u32_t ;
typedef int spiffs_page_ix ;
typedef int spiffs_file ;
struct TYPE_6__ {int flags; scalar_t__ last_access; int ix; } ;
typedef TYPE_1__ spiffs_cache_page ;
struct TYPE_7__ {scalar_t__ last_access; } ;
typedef TYPE_2__ spiffs_cache ;
typedef int spiffs ;
typedef int s32_t ;


 int SPIFFS_CACHE_FLAG_WRTHRU ;
 int SPIFFS_HAL_WRITE (int *,int ,int ,int*) ;
 int SPIFFS_OK ;
 int SPIFFS_OP_COM_MASK ;
 int SPIFFS_OP_C_DELE ;
 int SPIFFS_OP_C_WRTHRU ;
 int SPIFFS_OP_TYPE_MASK ;
 int SPIFFS_OP_T_OBJ_LU ;
 int SPIFFS_PADDR_TO_PAGE (int *,int ) ;
 size_t SPIFFS_PADDR_TO_PAGE_OFFSET (int *,int ) ;
 int _SPIFFS_MEMCPY (int*,int*,int ) ;
 int spiffs_cache_page_free (int *,int ,int ) ;
 TYPE_1__* spiffs_cache_page_get (int *,int ) ;
 TYPE_2__* spiffs_get_cache (int *) ;
 int* spiffs_get_cache_page (int *,TYPE_2__*,int ) ;

s32_t spiffs_phys_wr(
    spiffs *fs,
    u8_t op,
    spiffs_file fh,
    u32_t addr,
    u32_t len,
    u8_t *src) {
  (void)fh;
  spiffs_page_ix pix = SPIFFS_PADDR_TO_PAGE(fs, addr);
  spiffs_cache *cache = spiffs_get_cache(fs);
  spiffs_cache_page *cp = spiffs_cache_page_get(fs, pix);

  if (cp && (op & SPIFFS_OP_COM_MASK) != SPIFFS_OP_C_WRTHRU) {



    if ((op & SPIFFS_OP_COM_MASK) == SPIFFS_OP_C_DELE &&
        (op & SPIFFS_OP_TYPE_MASK) != SPIFFS_OP_T_OBJ_LU) {

      spiffs_cache_page_free(fs, cp->ix, 0);
      return SPIFFS_HAL_WRITE(fs, addr, len, src);
    }

    u8_t *mem = spiffs_get_cache_page(fs, cache, cp->ix);
    _SPIFFS_MEMCPY(&mem[SPIFFS_PADDR_TO_PAGE_OFFSET(fs, addr)], src, len);

    cache->last_access++;
    cp->last_access = cache->last_access;

    if (cp->flags & SPIFFS_CACHE_FLAG_WRTHRU) {

      return SPIFFS_HAL_WRITE(fs, addr, len, src);
    } else {
      return SPIFFS_OK;
    }
  } else {

    return SPIFFS_HAL_WRITE(fs, addr, len, src);
  }
}
