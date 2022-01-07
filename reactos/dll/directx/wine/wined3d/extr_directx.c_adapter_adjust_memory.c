
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_adapter {scalar_t__ vram_bytes_used; } ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ INT64 ;


 int TRACE (char*,int ,int ) ;
 int wine_dbgstr_longlong (scalar_t__) ;

UINT64 adapter_adjust_memory(struct wined3d_adapter *adapter, INT64 amount)
{
    adapter->vram_bytes_used += amount;
    TRACE("Adjusted used adapter memory by 0x%s to 0x%s.\n",
            wine_dbgstr_longlong(amount),
            wine_dbgstr_longlong(adapter->vram_bytes_used));
    return adapter->vram_bytes_used;
}
