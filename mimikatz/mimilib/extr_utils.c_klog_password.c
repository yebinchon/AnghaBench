
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Length; scalar_t__ Buffer; } ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int FILE ;


 int IS_TEXT_UNICODE_ODD_LENGTH ;
 int IS_TEXT_UNICODE_STATISTICS ;
 scalar_t__ IsTextUnicode (scalar_t__,int ,int*) ;
 int TRUE ;
 int klog (int *,char*,TYPE_1__*) ;
 int klog_hash (int *,TYPE_1__*,int ) ;

void klog_password(FILE * logfile, PUNICODE_STRING pPassword)
{
 int i = IS_TEXT_UNICODE_ODD_LENGTH | IS_TEXT_UNICODE_STATISTICS;
 if(pPassword->Buffer)
 {
  if(IsTextUnicode(pPassword->Buffer, pPassword->Length, &i))
   klog(logfile, L"%wZ", pPassword);
  else klog_hash(logfile, pPassword, TRUE);


 }
}
