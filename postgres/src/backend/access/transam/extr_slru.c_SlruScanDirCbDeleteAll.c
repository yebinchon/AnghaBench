
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SlruCtl ;


 int SlruInternalDeleteSegment (int ,char*) ;

bool
SlruScanDirCbDeleteAll(SlruCtl ctl, char *filename, int segpage, void *data)
{
 SlruInternalDeleteSegment(ctl, filename);

 return 0;
}
