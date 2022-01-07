
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XactDeferrable ;
 int XactIsoLevel ;
 int XactReadOnly ;
 int save_XactDeferrable ;
 int save_XactIsoLevel ;
 int save_XactReadOnly ;

void
SaveTransactionCharacteristics(void)
{
 save_XactIsoLevel = XactIsoLevel;
 save_XactReadOnly = XactReadOnly;
 save_XactDeferrable = XactDeferrable;
}
