
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filename; struct TYPE_3__* next; } ;
typedef int Size ;
typedef TYPE_1__ DynamicFileList ;


 int add_size (int,scalar_t__) ;
 TYPE_1__* file_list ;
 scalar_t__ strlen (int ) ;

Size
EstimateLibraryStateSpace(void)
{
 DynamicFileList *file_scanner;
 Size size = 1;

 for (file_scanner = file_list;
   file_scanner != ((void*)0);
   file_scanner = file_scanner->next)
  size = add_size(size, strlen(file_scanner->filename) + 1);

 return size;
}
