
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferGetPageSize (int ) ;
 int SpGistInitPage (int ,int ) ;

void
SpGistInitBuffer(Buffer b, uint16 f)
{
 Assert(BufferGetPageSize(b) == BLCKSZ);
 SpGistInitPage(BufferGetPage(b), f);
}
