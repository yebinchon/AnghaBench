
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ op_agent ;
 int op_close_agent (scalar_t__) ;

__attribute__((used)) static void zend_jit_oprofile_shutdown(void)
{
 if (op_agent) {

  op_close_agent(op_agent);
 }
}
