
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
typedef int h_buf ;


 int errno ;
 int gethostent_r (struct hostent*,char*,int,struct hostent**,int*) ;
 int perror (char*) ;
 int printf (char*,int,int) ;
 int printhostent (struct hostent*) ;

int main(int argc, char** argv) {
 struct hostent he_buf;
 struct hostent *he_res;
 char h_buf[1024];
 int ch_errno;
 int ret;
 do {
  ret = gethostent_r(&he_buf, h_buf, sizeof(h_buf), &he_res, &ch_errno);
  printf("ret: %d, h_errno: %d\n", ret, ch_errno);
  if(ret != 0) {
   errno = ret;
   ret = -1;
  }
  if(ret == -1) {
   perror("gethostent_r");
   break;
  }
  if(he_res) {
   printhostent(he_res);
  }
 } while (he_res);
 return 0;
}
