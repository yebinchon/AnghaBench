
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 scalar_t__ PageGetExactFreeSpace (int ) ;

bool
brin_can_do_samepage_update(Buffer buffer, Size origsz, Size newsz)
{
 return
  ((newsz <= origsz) ||
   PageGetExactFreeSpace(BufferGetPage(buffer)) >= (newsz - origsz));
}
