
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ zend_off_t ;
struct TYPE_8__ {size_t manifest_pos; TYPE_2__* phar; scalar_t__ offset; int is_persistent; } ;
typedef TYPE_3__ phar_entry_info ;
struct TYPE_9__ {TYPE_1__* manifest; } ;
struct TYPE_7__ {size_t phar_pos; } ;
struct TYPE_6__ {scalar_t__ fp_type; scalar_t__ offset; } ;


 scalar_t__ PHAR_FP ;
 TYPE_5__* PHAR_G (int ) ;
 int cached_fp ;

__attribute__((used)) static inline zend_off_t phar_get_fp_offset(phar_entry_info *entry)
{
 if (!entry->is_persistent) {
  return entry->offset;
 }
 if (PHAR_G(cached_fp)[entry->phar->phar_pos].manifest[entry->manifest_pos].fp_type == PHAR_FP) {
  if (!PHAR_G(cached_fp)[entry->phar->phar_pos].manifest[entry->manifest_pos].offset) {
   PHAR_G(cached_fp)[entry->phar->phar_pos].manifest[entry->manifest_pos].offset = entry->offset;
  }
 }
 return PHAR_G(cached_fp)[entry->phar->phar_pos].manifest[entry->manifest_pos].offset;
}
