
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filename; struct TYPE_3__* next; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__ DynamicFileList ;


 int Assert (int) ;
 TYPE_1__* file_list ;
 scalar_t__ strlcpy (char*,int ,scalar_t__) ;

void
SerializeLibraryState(Size maxsize, char *start_address)
{
 DynamicFileList *file_scanner;

 for (file_scanner = file_list;
   file_scanner != ((void*)0);
   file_scanner = file_scanner->next)
 {
  Size len;

  len = strlcpy(start_address, file_scanner->filename, maxsize) + 1;
  Assert(len < maxsize);
  maxsize -= len;
  start_address += len;
 }
 start_address[0] = '\0';
}
