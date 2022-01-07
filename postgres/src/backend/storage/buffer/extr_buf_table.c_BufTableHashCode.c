
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int BufferTag ;


 int SharedBufHash ;
 int get_hash_value (int ,void*) ;

uint32
BufTableHashCode(BufferTag *tagPtr)
{
 return get_hash_value(SharedBufHash, (void *) tagPtr);
}
