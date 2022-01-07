
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_PRINT_L3 (char*,int,int,unsigned long) ;
 int DEBUG_PRINT_T (char*,long) ;
 int RDTICK (long) ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 int pwrite (int,unsigned char const* const,int,unsigned long) ;
 int pwrite_stats ;
 int stderr ;
 char* strerror (int) ;
 int update_stats (int *,long,int) ;

__attribute__((used)) static int pwrite_adi(int fd, const unsigned char * const buf,
        int buf_sz, unsigned long offset)
{
 int ret, bytes_written = 0;
 unsigned long cur_offset;
 long start, end, elapsed_time = 0;

 cur_offset = offset;

 do {
  RDTICK(start);
  ret = pwrite(fd, buf + bytes_written,
        buf_sz - bytes_written, cur_offset);
  RDTICK(end);
  if (ret < 0) {
   fprintf(stderr, "pwrite(): error %d: %s\n",
    errno, strerror(errno));
   return -errno;
  }

  elapsed_time += (end - start);
  update_stats(&pwrite_stats, elapsed_time, buf_sz);
  bytes_written += ret;
  cur_offset += ret;

 } while (bytes_written < buf_sz);

 DEBUG_PRINT_T("\tpwrite elapsed timed = %ld\n", elapsed_time);
 DEBUG_PRINT_L3("\tWrote %d of %d bytes starting at address 0x%lx\n",
         bytes_written, buf_sz, offset);

 return bytes_written;
}
