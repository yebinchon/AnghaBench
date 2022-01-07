
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,int) ;
 int op_agent ;
 int op_open_agent () ;
 int stderr ;

__attribute__((used)) static int zend_jit_oprofile_startup(void)
{
 op_agent = op_open_agent();
 if (!op_agent) {
  fprintf(stderr, "OpAgent initialization failed [%d]!\n", errno);
  return 0;
 }
 return 1;
}
