
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fileFlags; } ;
typedef size_t File ;


 int Assert (int ) ;
 int FileIsValid (size_t) ;
 TYPE_1__* VfdCache ;

int
FileGetRawFlags(File file)
{
 Assert(FileIsValid(file));
 return VfdCache[file].fileFlags;
}
