
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ selmode; } ;


 TYPE_1__ cfg ;
 scalar_t__ nselected ;
 scalar_t__ selbufpos ;
 int writesel (int *,int ) ;

__attribute__((used)) static void clearselection(void)
{
 nselected = 0;
 selbufpos = 0;
 cfg.selmode = 0;
 writesel(((void*)0), 0);
}
