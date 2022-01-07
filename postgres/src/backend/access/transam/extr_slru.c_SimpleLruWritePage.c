
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SlruCtl ;


 int SlruInternalWritePage (int ,int,int *) ;

void
SimpleLruWritePage(SlruCtl ctl, int slotno)
{
 SlruInternalWritePage(ctl, slotno, ((void*)0));
}
