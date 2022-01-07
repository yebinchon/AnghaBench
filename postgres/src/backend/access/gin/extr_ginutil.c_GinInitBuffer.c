
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int GinInitPage (int ,int ,int ) ;

void
GinInitBuffer(Buffer b, uint32 f)
{
 GinInitPage(BufferGetPage(b), f, BufferGetPageSize(b));
}
