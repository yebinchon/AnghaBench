
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dxbc {int sections; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int TRACE (char*,struct dxbc*) ;

void dxbc_destroy(struct dxbc *dxbc)
{
    TRACE("dxbc %p.\n", dxbc);

    HeapFree(GetProcessHeap(), 0, dxbc->sections);
}
