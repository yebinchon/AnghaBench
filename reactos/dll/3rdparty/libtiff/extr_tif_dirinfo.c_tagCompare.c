
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ field_tag; scalar_t__ field_type; } ;
typedef TYPE_1__ TIFFField ;


 scalar_t__ TIFF_ANY ;

__attribute__((used)) static int
tagCompare(const void* a, const void* b)
{
 const TIFFField* ta = *(const TIFFField**) a;
 const TIFFField* tb = *(const TIFFField**) b;

 if (ta->field_tag != tb->field_tag)
  return (int)ta->field_tag - (int)tb->field_tag;
 else
  return (ta->field_type == TIFF_ANY) ?
   0 : ((int)tb->field_type - (int)ta->field_type);
}
