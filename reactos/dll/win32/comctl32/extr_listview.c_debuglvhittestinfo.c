
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iSubItem; int iItem; int flags; int pt; } ;
typedef TYPE_1__ LVHITTESTINFO ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ) ;
 int wine_dbgstr_point (int *) ;

__attribute__((used)) static const char* debuglvhittestinfo(const LVHITTESTINFO *lpht)
{
    if (!lpht) return "(null)";

    return wine_dbg_sprintf("{pt=%s, flags=0x%x, iItem=%d, iSubItem=%d}",
   wine_dbgstr_point(&lpht->pt), lpht->flags, lpht->iItem, lpht->iSubItem);
}
