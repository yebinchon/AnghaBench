
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loaded; void* handle; scalar_t__ dll_name; } ;


 int DLLS_SIZE ;
 unsigned long FORMAT_MESSAGE_FROM_HMODULE ;
 unsigned long FORMAT_MESSAGE_FROM_SYSTEM ;
 unsigned long FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessage (unsigned long,void*,int,int ,char*,size_t,int ) ;
 int LANG_ENGLISH ;
 int LOAD_LIBRARY_AS_DATAFILE ;
 scalar_t__ LoadLibraryEx (scalar_t__,int ,int ) ;
 int LookupWSErrorMessage (int,char*) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 TYPE_1__* dlls ;
 char* libpq_gettext (char*) ;
 int sprintf (char*,char*,int,int) ;
 int strlen (char*) ;

const char *
winsock_strerror(int err, char *strerrbuf, size_t buflen)
{
 unsigned long flags;
 int offs,
    i;
 int success = LookupWSErrorMessage(err, strerrbuf);

 for (i = 0; !success && i < DLLS_SIZE; i++)
 {

  if (!dlls[i].loaded)
  {
   dlls[i].loaded = 1;
   dlls[i].handle = (void *) LoadLibraryEx(
             dlls[i].dll_name,
             0,
             LOAD_LIBRARY_AS_DATAFILE);
  }

  if (dlls[i].dll_name && !dlls[i].handle)
   continue;

  flags = FORMAT_MESSAGE_FROM_SYSTEM
   | FORMAT_MESSAGE_IGNORE_INSERTS
   | (dlls[i].handle ? FORMAT_MESSAGE_FROM_HMODULE : 0);

  success = 0 != FormatMessage(
          flags,
          dlls[i].handle, err,
          MAKELANGID(LANG_ENGLISH, SUBLANG_DEFAULT),
          strerrbuf, buflen - 64,
          0
   );
 }

 if (!success)
  sprintf(strerrbuf, libpq_gettext("unrecognized socket error: 0x%08X/%d"), err, err);
 else
 {
  strerrbuf[buflen - 1] = '\0';
  offs = strlen(strerrbuf);
  if (offs > (int) buflen - 64)
   offs = buflen - 64;
  sprintf(strerrbuf + offs, " (0x%08X/%d)", err, err);
 }
 return strerrbuf;
}
