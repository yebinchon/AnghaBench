
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_XLOG_SEG_SIZE ;
 scalar_t__ TYPEALIGN (int ,int *) ;
 int XLOG_BLCKSZ ;
 char* buf ;
 int * full_buf ;
 int random () ;

__attribute__((used)) static void
prepare_buf(void)
{
 int ops;


 for (ops = 0; ops < DEFAULT_XLOG_SEG_SIZE; ops++)
  full_buf[ops] = random();

 buf = (char *) TYPEALIGN(XLOG_BLCKSZ, full_buf);
}
