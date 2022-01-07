
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ cmsHANDLE ;


 int cmsIT8Free (scalar_t__) ;
 scalar_t__ cmsIT8LoadFromMem (int ,void*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
  if (size == 0)
    return 0;

  cmsHANDLE handle = cmsIT8LoadFromMem(0, (void *)data, size);
  if (handle)
    cmsIT8Free(handle);

  return 0;
}
