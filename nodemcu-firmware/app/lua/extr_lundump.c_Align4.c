
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int total; } ;
typedef TYPE_1__ LoadState ;


 int LoadChar (TYPE_1__*) ;

__attribute__((used)) static void Align4(LoadState* S)
{
 while(S->total&3)
  LoadChar(S);
}
