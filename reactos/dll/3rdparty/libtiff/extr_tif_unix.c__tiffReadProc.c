
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tmsize_t ;
typedef int thandle_t ;
struct TYPE_2__ {int fd; int h; } ;
typedef TYPE_1__ fd_as_handle_union_t ;
typedef int TIFFIOSize_t ;


 int EINVAL ;
 size_t TIFF_IO_MAX ;
 int errno ;
 scalar_t__ read (int ,char*,int ) ;

__attribute__((used)) static tmsize_t
_tiffReadProc(thandle_t fd, void* buf, tmsize_t size)
{
 fd_as_handle_union_t fdh;
        const size_t bytes_total = (size_t) size;
        size_t bytes_read;
        tmsize_t count = -1;
 if ((tmsize_t) bytes_total != size)
 {
  errno=EINVAL;
  return (tmsize_t) -1;
 }
 fdh.h = fd;
        for (bytes_read=0; bytes_read < bytes_total; bytes_read+=count)
        {
                char *buf_offset = (char *) buf+bytes_read;
                size_t io_size = bytes_total-bytes_read;
                if (io_size > TIFF_IO_MAX)
                        io_size = TIFF_IO_MAX;
                count=read(fdh.fd, buf_offset, (TIFFIOSize_t) io_size);
                if (count <= 0)
                        break;
        }
        if (count < 0)
                return (tmsize_t)-1;
        return (tmsize_t) bytes_read;
}
