
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numSpcs; int * tblSpcs; } ;
typedef TYPE_1__ temp_tablespaces_extra ;


 int SetTempTablespaces (int *,int ) ;

void
assign_temp_tablespaces(const char *newval, void *extra)
{
 temp_tablespaces_extra *myextra = (temp_tablespaces_extra *) extra;
 if (myextra)
  SetTempTablespaces(myextra->tblSpcs, myextra->numSpcs);
 else
  SetTempTablespaces(((void*)0), 0);
}
