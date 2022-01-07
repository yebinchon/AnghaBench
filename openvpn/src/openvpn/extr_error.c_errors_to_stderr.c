
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENVPN_ERROR_FP ;
 int default_err ;

void
errors_to_stderr(void)
{
    default_err = OPENVPN_ERROR_FP;
}
