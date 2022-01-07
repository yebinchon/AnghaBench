
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int InitXLOGAccess () ;
 int LocalXLogInsertAllowed ;

__attribute__((used)) static void
LocalSetXLogInsertAllowed(void)
{
 Assert(LocalXLogInsertAllowed == -1);
 LocalXLogInsertAllowed = 1;


 InitXLOGAccess();
}
