
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* orderByData; struct TYPE_4__* keyData; } ;
typedef TYPE_1__* IndexScanDesc ;


 int pfree (TYPE_1__*) ;

void
IndexScanEnd(IndexScanDesc scan)
{
 if (scan->keyData != ((void*)0))
  pfree(scan->keyData);
 if (scan->orderByData != ((void*)0))
  pfree(scan->orderByData);

 pfree(scan);
}
