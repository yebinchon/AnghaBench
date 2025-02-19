
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;


 int HEAP_KEYS_UPDATED ;
 int HEAP_XMAX_EXCL_LOCK ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMAX_KEYSHR_LOCK ;
 int HEAP_XMAX_LOCK_ONLY ;
 int XLHL_KEYS_UPDATED ;
 int XLHL_XMAX_EXCL_LOCK ;
 int XLHL_XMAX_IS_MULTI ;
 int XLHL_XMAX_KEYSHR_LOCK ;
 int XLHL_XMAX_LOCK_ONLY ;

__attribute__((used)) static void
fix_infomask_from_infobits(uint8 infobits, uint16 *infomask, uint16 *infomask2)
{
 *infomask &= ~(HEAP_XMAX_IS_MULTI | HEAP_XMAX_LOCK_ONLY |
       HEAP_XMAX_KEYSHR_LOCK | HEAP_XMAX_EXCL_LOCK);
 *infomask2 &= ~HEAP_KEYS_UPDATED;

 if (infobits & XLHL_XMAX_IS_MULTI)
  *infomask |= HEAP_XMAX_IS_MULTI;
 if (infobits & XLHL_XMAX_LOCK_ONLY)
  *infomask |= HEAP_XMAX_LOCK_ONLY;
 if (infobits & XLHL_XMAX_EXCL_LOCK)
  *infomask |= HEAP_XMAX_EXCL_LOCK;

 if (infobits & XLHL_XMAX_KEYSHR_LOCK)
  *infomask |= HEAP_XMAX_KEYSHR_LOCK;

 if (infobits & XLHL_KEYS_UPDATED)
  *infomask2 |= HEAP_KEYS_UPDATED;
}
