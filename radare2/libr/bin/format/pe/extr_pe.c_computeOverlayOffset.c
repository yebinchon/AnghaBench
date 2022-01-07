
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;



__attribute__((used)) static void computeOverlayOffset(ut64 offset, ut64 size, ut64 file_size, ut64* largest_offset, ut64* largest_size) {
 if (offset + size <= file_size && offset + size > (*largest_offset + *largest_size)) {
  *largest_offset = offset;
  *largest_size = size;
 }
}
