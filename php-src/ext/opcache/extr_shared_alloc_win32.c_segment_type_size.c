
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_shared_segment ;



__attribute__((used)) static size_t segment_type_size(void)
{
 return sizeof(zend_shared_segment);
}
