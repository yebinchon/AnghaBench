
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int TarMethodFile ;
struct TYPE_2__ {int data; } ;
typedef TYPE_1__ PGAlignedXLogBlock ;


 size_t Min (size_t,int ) ;
 int XLOG_BLCKSZ ;
 int memset (int ,int ,int ) ;
 scalar_t__ tar_write (int *,int ,size_t) ;

__attribute__((used)) static bool
tar_write_padding_data(TarMethodFile *f, size_t bytes)
{
 PGAlignedXLogBlock zerobuf;
 size_t bytesleft = bytes;

 memset(zerobuf.data, 0, XLOG_BLCKSZ);
 while (bytesleft)
 {
  size_t bytestowrite = Min(bytesleft, XLOG_BLCKSZ);
  ssize_t r = tar_write(f, zerobuf.data, bytestowrite);

  if (r < 0)
   return 0;
  bytesleft -= r;
 }

 return 1;
}
