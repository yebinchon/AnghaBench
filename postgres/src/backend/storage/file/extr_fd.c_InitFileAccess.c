
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ Vfd ;


 int Assert (int) ;
 int AtProcExit_Files ;
 int ERRCODE_OUT_OF_MEMORY ;
 int FATAL ;
 int MemSet (char*,int ,int) ;
 int SizeVfdCache ;
 int VFD_CLOSED ;
 TYPE_1__* VfdCache ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ malloc (int) ;
 int on_proc_exit (int ,int ) ;

void
InitFileAccess(void)
{
 Assert(SizeVfdCache == 0);


 VfdCache = (Vfd *) malloc(sizeof(Vfd));
 if (VfdCache == ((void*)0))
  ereport(FATAL,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));

 MemSet((char *) &(VfdCache[0]), 0, sizeof(Vfd));
 VfdCache->fd = VFD_CLOSED;

 SizeVfdCache = 1;


 on_proc_exit(AtProcExit_Files, 0);
}
