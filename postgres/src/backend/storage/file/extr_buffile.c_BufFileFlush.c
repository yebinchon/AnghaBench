
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dirty; } ;
typedef TYPE_1__ BufFile ;


 int BufFileDumpBuffer (TYPE_1__*) ;
 int EOF ;

__attribute__((used)) static int
BufFileFlush(BufFile *file)
{
 if (file->dirty)
 {
  BufFileDumpBuffer(file);
  if (file->dirty)
   return EOF;
 }

 return 0;
}
