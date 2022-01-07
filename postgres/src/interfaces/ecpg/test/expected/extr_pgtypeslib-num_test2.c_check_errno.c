
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int printf (char*,...) ;
 char* strerror (int) ;

__attribute__((used)) static void
check_errno(void)
{
 switch(errno)
 {
  case 0:
   printf("(no errno set) - ");
   break;
  case 129:
   printf("(errno == PGTYPES_NUM_OVERFLOW) - ");
   break;
  case 128:
   printf("(errno == PGTYPES_NUM_UNDERFLOW) - ");
   break;
  case 131:
   printf("(errno == PGTYPES_NUM_BAD_NUMERIC) - ");
   break;
  case 130:
   printf("(errno == PGTYPES_NUM_DIVIDE_ZERO) - ");
   break;
  default:
   printf("(unknown errno (%d))\n", errno);
   printf("(libc: (%s)) ", strerror(errno));
   break;
 }

}
