
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int failed; } ;
typedef TYPE_1__ PrintfTarget ;


 int dostr (char*,int,TYPE_1__*) ;
 int sprintf (char*,char*,void*) ;

__attribute__((used)) static void
fmtptr(void *value, PrintfTarget *target)
{
 int vallen;
 char convert[64];


 vallen = sprintf(convert, "%p", value);
 if (vallen < 0)
  target->failed = 1;
 else
  dostr(convert, vallen, target);
}
