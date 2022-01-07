
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int php_stream ;
struct TYPE_6__ {TYPE_1__* phar; int is_persistent; } ;
typedef TYPE_2__ phar_entry_info ;
struct TYPE_7__ {int * ufp; } ;
struct TYPE_5__ {size_t phar_pos; int * ufp; } ;


 TYPE_4__* PHAR_G (int ) ;
 int cached_fp ;

__attribute__((used)) static inline php_stream *phar_get_entrypufp(phar_entry_info *entry)
{
 if (!entry->is_persistent) {
  return entry->phar->ufp;
 }
 return PHAR_G(cached_fp)[entry->phar->phar_pos].ufp;
}
