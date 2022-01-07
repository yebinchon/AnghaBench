
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_shared_segment ;


 int memcpy (void*,void*,int) ;

__attribute__((used)) static void copy_shared_segments(void *to, void *from, int count, int size)
{
 zend_shared_segment **shared_segments_v = (zend_shared_segment **)to;
 void *shared_segments_to_p = ((char *)to + count*(sizeof(void *)));
 void *shared_segments_from_p = from;
 int i;

 for (i = 0; i < count; i++) {
  shared_segments_v[i] = shared_segments_to_p;
  memcpy(shared_segments_to_p, shared_segments_from_p, size);
  shared_segments_to_p = ((char *)shared_segments_to_p + size);
  shared_segments_from_p = ((char *)shared_segments_from_p + size);
 }
}
