
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAILURE ;
 scalar_t__ PS (int ) ;
 scalar_t__ SUCCESS ;
 scalar_t__ php_session_active ;
 scalar_t__ php_session_initialize () ;
 int session_status ;

__attribute__((used)) static int php_session_reset(void)
{
 if (PS(session_status) == php_session_active
  && php_session_initialize() == SUCCESS) {
  return SUCCESS;
 }
 return FAILURE;
}
