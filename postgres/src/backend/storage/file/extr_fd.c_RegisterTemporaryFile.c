
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdstate; int resowner; } ;
typedef size_t File ;


 int CurrentResourceOwner ;
 int FD_CLOSE_AT_EOXACT ;
 int ResourceOwnerRememberFile (int ,size_t) ;
 TYPE_1__* VfdCache ;
 int have_xact_temporary_files ;

__attribute__((used)) static void
RegisterTemporaryFile(File file)
{
 ResourceOwnerRememberFile(CurrentResourceOwner, file);
 VfdCache[file].resowner = CurrentResourceOwner;


 VfdCache[file].fdstate |= FD_CLOSE_AT_EOXACT;
 have_xact_temporary_files = 1;
}
