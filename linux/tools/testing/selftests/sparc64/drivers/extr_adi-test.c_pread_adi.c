
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_PRINT_L3 (char*,int,unsigned long) ;
 int DEBUG_PRINT_L4 (char*,unsigned long,unsigned char) ;
 int DEBUG_PRINT_T (char*,long) ;
 int RDTICK (long) ;
 int errno ;
 int pread (int,unsigned char*,int,unsigned long) ;
 int pread_stats ;
 int update_stats (int *,long,int) ;

__attribute__((used)) static int pread_adi(int fd, unsigned char *buf,
       int buf_sz, unsigned long offset)
{
 int ret, i, bytes_read = 0;
 unsigned long cur_offset;
 long start, end, elapsed_time = 0;

 cur_offset = offset;
 do {
  RDTICK(start);
  ret = pread(fd, buf + bytes_read, buf_sz - bytes_read,
       cur_offset);
  RDTICK(end);
  if (ret < 0)
   return -errno;

  elapsed_time += end - start;
  update_stats(&pread_stats, elapsed_time, buf_sz);
  bytes_read += ret;
  cur_offset += ret;

 } while (bytes_read < buf_sz);

 DEBUG_PRINT_T("\tpread elapsed timed = %ld\n", elapsed_time);
 DEBUG_PRINT_L3("\tRead  %d bytes starting at offset 0x%lx\n",
         bytes_read, offset);
 for (i = 0; i < bytes_read; i++)
  DEBUG_PRINT_L4("\t\t0x%lx\t%d\n", offset + i, buf[i]);

 return bytes_read;
}
