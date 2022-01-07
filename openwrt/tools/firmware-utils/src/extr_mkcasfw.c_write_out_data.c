
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct csum_state {int dummy; } ;
typedef int FILE ;


 int ERRS (char*) ;
 int ERR_FATAL ;
 int csum_update (int *,size_t,struct csum_state*) ;
 scalar_t__ errno ;
 int fwrite (int *,size_t,int,int *) ;

int
write_out_data(FILE *outfile, uint8_t *data, size_t len,
  struct csum_state *css)
{
 errno = 0;

 fwrite(data, len, 1, outfile);
 if (errno) {
  ERRS("unable to write output file");
  return ERR_FATAL;
 }

 if (css) {
  csum_update(data, len, css);
 }

 return 0;
}
