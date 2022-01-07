
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WRes ;
struct TYPE_3__ {int file; int handle; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CSzFile ;
typedef int Byte ;
typedef int BOOL ;


 int GetLastError () ;
 int WriteFile (int ,void const*,size_t,size_t*,int *) ;
 int ferror (int ) ;
 size_t fwrite (void const*,int,size_t,int ) ;
 size_t kChunkSizeMax ;

WRes File_Write(CSzFile *p, const void *data, size_t *size)
{
  size_t originalSize = *size;
  if (originalSize == 0)
    return 0;
  *size = fwrite(data, 1, originalSize, p->file);
  if (*size == originalSize)
    return 0;
  return ferror(p->file);


}
