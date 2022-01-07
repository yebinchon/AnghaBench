
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static char readbit(const ut8 *src, int bitoffset) {
 const int wholeBytes = bitoffset / 8;
 const int remainingBits = bitoffset % 8;

 return (src[wholeBytes] & 1<< remainingBits);
}
