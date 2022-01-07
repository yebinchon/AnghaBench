
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* PagePrecedes ) (int,int) ;} ;
typedef TYPE_1__* SlruCtl ;


 int SlruInternalDeleteSegment (TYPE_1__*,char*) ;
 scalar_t__ stub1 (int,int) ;

__attribute__((used)) static bool
SlruScanDirCbDeleteCutoff(SlruCtl ctl, char *filename, int segpage, void *data)
{
 int cutoffPage = *(int *) data;

 if (ctl->PagePrecedes(segpage, cutoffPage))
  SlruInternalDeleteSegment(ctl, filename);

 return 0;
}
