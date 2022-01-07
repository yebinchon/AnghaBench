
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NIL ;
 scalar_t__ exportedSnapshots ;

bool
XactHasExportedSnapshots(void)
{
 return (exportedSnapshots != NIL);
}
