
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t USHORT ;
struct TYPE_3__ {size_t Length; scalar_t__ Buffer; } ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int * LPCBYTE ;
typedef int FILE ;
typedef scalar_t__ BOOLEAN ;


 int klog (int *,char*,int ,char*) ;

void klog_hash(FILE * logfile, PUNICODE_STRING pHash, BOOLEAN withSpace)
{
 USHORT i;
 if(pHash->Buffer)
  for(i = 0; i < pHash->Length; i++)
   klog(logfile, L"%02x%s", ((LPCBYTE) pHash->Buffer)[i], withSpace ? " " : "");
}
