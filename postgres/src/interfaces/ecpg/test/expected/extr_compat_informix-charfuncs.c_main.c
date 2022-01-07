
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int byleng (char*,int) ;
 int ldchar (char*,int,char*) ;
 int printf (char*,...) ;
 int rupshift (char*) ;

int main(void)
{
 char t1[] = "abc  def  ghi  ";

 char buf[50];
 int k;

 printf("t1: _%s_\n", t1);
 rupshift(t1);
 printf("t1: _%s_\n", t1);

 k = 2;
 ldchar(t1, k, buf);
 printf("byleng(t1, %d): %d, ldchar: _%s_\n", k, byleng(t1, k), buf);
 k = 5;
 ldchar(t1, k, buf);
 printf("byleng(t1, %d): %d, ldchar: _%s_\n", k, byleng(t1, k), buf);
 k = 9;
 ldchar(t1, k, buf);
 printf("byleng(t1, %d): %d, ldchar: _%s_\n", k, byleng(t1, k), buf);
 k = 15;
 ldchar(t1, k, buf);
 printf("byleng(t1, %d): %d, ldchar: _%s_\n", k, byleng(t1, k), buf);


 return 0;
}
