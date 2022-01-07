
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int EG ;


 int zend_set_timeout_ex (int ,int) ;

void zend_set_timeout(zend_long seconds, int reset_signals)
{

 EG(timeout_seconds) = seconds;
 zend_set_timeout_ex(seconds, reset_signals);
 EG(timed_out) = 0;
}
