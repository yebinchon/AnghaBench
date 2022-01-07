
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 scalar_t__ InvalidBuffer ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ PageIsAllVisible (int ) ;
 int visibilitymap_pin (int ,scalar_t__,scalar_t__*) ;
 int visibilitymap_pin_ok (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
GetVisibilityMapPins(Relation relation, Buffer buffer1, Buffer buffer2,
      BlockNumber block1, BlockNumber block2,
      Buffer *vmbuffer1, Buffer *vmbuffer2)
{
 bool need_to_pin_buffer1;
 bool need_to_pin_buffer2;

 Assert(BufferIsValid(buffer1));
 Assert(buffer2 == InvalidBuffer || block1 <= block2);

 while (1)
 {

  need_to_pin_buffer1 = PageIsAllVisible(BufferGetPage(buffer1))
   && !visibilitymap_pin_ok(block1, *vmbuffer1);
  need_to_pin_buffer2 = buffer2 != InvalidBuffer
   && PageIsAllVisible(BufferGetPage(buffer2))
   && !visibilitymap_pin_ok(block2, *vmbuffer2);
  if (!need_to_pin_buffer1 && !need_to_pin_buffer2)
   return;


  LockBuffer(buffer1, BUFFER_LOCK_UNLOCK);
  if (buffer2 != InvalidBuffer && buffer2 != buffer1)
   LockBuffer(buffer2, BUFFER_LOCK_UNLOCK);


  if (need_to_pin_buffer1)
   visibilitymap_pin(relation, block1, vmbuffer1);
  if (need_to_pin_buffer2)
   visibilitymap_pin(relation, block2, vmbuffer2);


  LockBuffer(buffer1, BUFFER_LOCK_EXCLUSIVE);
  if (buffer2 != InvalidBuffer && buffer2 != buffer1)
   LockBuffer(buffer2, BUFFER_LOCK_EXCLUSIVE);







  if (buffer2 == InvalidBuffer || buffer1 == buffer2
   || (need_to_pin_buffer1 && need_to_pin_buffer2))
   break;
 }
}
