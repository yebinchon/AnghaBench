
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int fp_type; size_t manifest_pos; TYPE_2__* phar; int is_persistent; } ;
typedef TYPE_3__ phar_entry_info ;
typedef enum phar_fp_type { ____Placeholder_phar_fp_type } phar_fp_type ;
struct TYPE_9__ {TYPE_1__* manifest; } ;
struct TYPE_7__ {size_t phar_pos; } ;
struct TYPE_6__ {int fp_type; } ;


 TYPE_5__* PHAR_G (int ) ;
 int cached_fp ;

__attribute__((used)) static inline enum phar_fp_type phar_get_fp_type(phar_entry_info *entry)
{
 if (!entry->is_persistent) {
  return entry->fp_type;
 }
 return PHAR_G(cached_fp)[entry->phar->phar_pos].manifest[entry->manifest_pos].fp_type;
}
