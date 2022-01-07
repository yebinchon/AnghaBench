
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt16 ;
struct TYPE_4__ {int * data; } ;
struct TYPE_5__ {size_t* FileNameOffsets; TYPE_1__ FileNames; } ;
typedef TYPE_2__ CSzArEx ;
typedef int Byte ;


 int GetUi16 (int const*) ;

size_t SzArEx_GetFileNameUtf16(const CSzArEx *p, size_t fileIndex, UInt16 *dest)
{
  size_t len = p->FileNameOffsets[fileIndex + 1] - p->FileNameOffsets[fileIndex];
  if (dest != 0)
  {
    size_t i;
    const Byte *src = p->FileNames.data + (p->FileNameOffsets[fileIndex] * 2);
    for (i = 0; i < len; i++)
      dest[i] = GetUi16(src + i * 2);
  }
  return len;
}
