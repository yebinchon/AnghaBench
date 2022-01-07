
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int errno ;
 int error (int,int ,char*) ;
 int printf (char*,char,char) ;
 int read (int,char*,int) ;

__attribute__((used)) static int read_verify_pkt(int fdr, char payload_char)
{
 char buf[100];
 int ret;

 ret = read(fdr, buf, sizeof(buf));
 if (ret != sizeof(buf))
  error(1, errno, "read");

 if (buf[60] != payload_char) {
  printf("wrong pattern: 0x%x != 0x%x\n", buf[60], payload_char);
  return 1;
 }

 printf("read: %c (0x%x)\n", buf[60], buf[60]);
 return 0;
}
