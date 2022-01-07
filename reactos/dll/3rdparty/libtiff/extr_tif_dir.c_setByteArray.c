
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t tmsize_t ;


 int _TIFFfree (void*) ;
 scalar_t__ _TIFFmalloc (size_t) ;
 int _TIFFmemcpy (void*,void*,size_t) ;

__attribute__((used)) static void
setByteArray(void** vpp, void* vp, size_t nmemb, size_t elem_size)
{
 if (*vpp) {
  _TIFFfree(*vpp);
  *vpp = 0;
 }
 if (vp) {
  tmsize_t bytes = (tmsize_t)(nmemb * elem_size);
  if (elem_size && bytes / elem_size == nmemb)
   *vpp = (void*) _TIFFmalloc(bytes);
  if (*vpp)
   _TIFFmemcpy(*vpp, vp, bytes);
 }
}
