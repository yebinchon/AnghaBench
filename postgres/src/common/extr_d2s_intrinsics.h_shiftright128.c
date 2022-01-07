
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;


 int Assert (int) ;

__attribute__((used)) static inline uint64
shiftright128(const uint64 lo, const uint64 hi, const uint32 dist)
{

 Assert(dist < 64);

 Assert(dist > 0);
 return (hi << (64 - dist)) | (lo >> dist);





}
