
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int NumberOfModules; TYPE_2__* Modules; } ;
struct TYPE_6__ {int ImageBase; int ImageSize; scalar_t__ FullPathName; } ;
struct TYPE_5__ {int (* cb_printf ) (char*,char const*,int ,int ) ;} ;
typedef TYPE_1__ RIO ;
typedef TYPE_2__* PRTL_PROCESS_MODULE_INFORMATION ;
typedef TYPE_3__* PRTL_PROCESS_MODULES ;
typedef int * LPVOID ;
typedef int DWORD ;


 scalar_t__ DeviceIoControl (scalar_t__,int ,int *,int,int *,int,int *,int *) ;
 char* GetFileName (char const*) ;
 int IOCTL_GET_SYSTEM_MODULES ;
 int eprintf (char*,...) ;
 scalar_t__ gHandleDriver ;
 int * malloc (int) ;
 int stub1 (char*,char const*,int ,int ) ;

int GetSystemModules(RIO *io) {
 DWORD bRead = 0;
 int i;
 LPVOID lpBufMods = ((void*)0);
 int bufmodsize = 1024 * 1024;
 if(gHandleDriver) {
  if (!(lpBufMods = malloc (bufmodsize))) {
   eprintf ("[r2k] GetSystemModules: Error can't allocate %i bytes of memory.\n", bufmodsize);
   return -1;
  }
  if (DeviceIoControl (gHandleDriver, IOCTL_GET_SYSTEM_MODULES, lpBufMods, bufmodsize, lpBufMods, bufmodsize, &bRead, ((void*)0))) {
   PRTL_PROCESS_MODULES pm = (PRTL_PROCESS_MODULES)lpBufMods;
   PRTL_PROCESS_MODULE_INFORMATION pMod = pm->Modules;
   for (i = 0; i < pm->NumberOfModules; i++) {
    const char *fileName = GetFileName((const char*)pMod[i].FullPathName);
    io->cb_printf ("f nt.%s 0x%x @ 0x%p\n", fileName, pMod[i].ImageSize, pMod[i].ImageBase);
   }
  }
 } else {
  eprintf ("Driver not initialized.\n");
 }
 return 1;
}
