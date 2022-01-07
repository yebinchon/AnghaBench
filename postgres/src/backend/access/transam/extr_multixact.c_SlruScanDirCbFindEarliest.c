
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int earliestExistingPage; } ;
typedef TYPE_1__ mxtruncinfo ;
struct TYPE_5__ {scalar_t__ (* PagePrecedes ) (int,int) ;} ;
typedef TYPE_2__* SlruCtl ;


 scalar_t__ stub1 (int,int) ;

__attribute__((used)) static bool
SlruScanDirCbFindEarliest(SlruCtl ctl, char *filename, int segpage, void *data)
{
 mxtruncinfo *trunc = (mxtruncinfo *) data;

 if (trunc->earliestExistingPage == -1 ||
  ctl->PagePrecedes(segpage, trunc->earliestExistingPage))
 {
  trunc->earliestExistingPage = segpage;
 }

 return 0;
}
