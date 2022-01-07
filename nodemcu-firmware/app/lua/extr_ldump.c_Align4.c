
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wrote; scalar_t__ status; } ;
typedef TYPE_1__ DumpState ;


 int DumpChar (int ,TYPE_1__*) ;

__attribute__((used)) static void Align4(DumpState *D)
{
 while(D->wrote&3 && D->status==0)
  DumpChar(0,D);
}
