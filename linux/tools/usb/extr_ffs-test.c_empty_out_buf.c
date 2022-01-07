
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int ssize_t ;
typedef size_t __u8 ;


 int EILSEQ ;



 int err (char*,size_t,size_t,size_t const) ;
 int errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int fwrite (void const*,size_t,int,int ) ;
 int pattern ;
 int stderr ;
 int stdout ;

__attribute__((used)) static ssize_t
empty_out_buf(struct thread *ignore, const void *buf, size_t nbytes)
{
 const __u8 *p;
 __u8 expected;
 ssize_t ret;
 size_t len;

 (void)ignore;

 switch (pattern) {
 case 128:
  expected = 0;
  for (p = buf, len = 0; len < nbytes; ++p, ++len)
   if (*p)
    goto invalid;
  break;

 case 129:
  for (p = buf, len = 0; len < nbytes; ++p, ++len)
   if (*p != len % 63) {
    expected = len % 63;
    goto invalid;
   }
  break;

 case 130:
  ret = fwrite(buf, nbytes, 1, stdout);
  if (ret > 0)
   fflush(stdout);
  break;

invalid:
  err("bad OUT byte %zd, expected %02x got %02x\n",
      len, expected, *p);
  for (p = buf, len = 0; len < nbytes; ++p, ++len) {
   if (0 == (len % 32))
    fprintf(stderr, "%4zd:", len);
   fprintf(stderr, " %02x", *p);
   if (31 == (len % 32))
    fprintf(stderr, "\n");
  }
  fflush(stderr);
  errno = EILSEQ;
  return -1;
 }

 return len;
}
