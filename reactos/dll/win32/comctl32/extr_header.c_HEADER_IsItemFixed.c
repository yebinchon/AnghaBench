
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dwStyle; TYPE_1__* items; } ;
struct TYPE_4__ {int fmt; } ;
typedef size_t INT ;
typedef TYPE_2__ HEADER_INFO ;
typedef int BOOL ;


 int HDF_FIXEDWIDTH ;
 int HDS_NOSIZING ;

__attribute__((used)) static inline BOOL
HEADER_IsItemFixed(const HEADER_INFO *infoPtr, INT iItem)
{
    return (infoPtr->dwStyle & HDS_NOSIZING) || (infoPtr->items[iItem].fmt & HDF_FIXEDWIDTH);
}
