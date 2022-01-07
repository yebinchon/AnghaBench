
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int INBUFSIZE ;
 size_t OUTBUFSIZE ;
 size_t iconv (int ,char**,size_t*,char**,size_t*) ;
 int iconv_close (int ) ;
 int iconv_open (char*,char*) ;
 char* inbuffer ;
 char* outbuffer ;
 size_t read (int ,char*,int ) ;
 int write (int,char*,size_t) ;

int main(void) {
  size_t numread;
  iconv_t icdsc;
  char *tocode="UTF-8";
  char *fromcode="cp1250";
  if ((icdsc = iconv_open(tocode, fromcode)) != (iconv_t)(-1)) {
    while ((numread = read(0, inbuffer, INBUFSIZE))) {
      char *iptr=inbuffer;
      char *optr=outbuffer;
      size_t inleft=numread;
      size_t outleft=OUTBUFSIZE;
      if (iconv(icdsc, &iptr, &inleft, &optr, &outleft)
          != (size_t)(-1)) {
        write(1, outbuffer, OUTBUFSIZE - outleft);
      }
    }
    if (iconv_close(icdsc) == -1)
      ;
  }
  return 0;
}
