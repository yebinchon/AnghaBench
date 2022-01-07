
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int U_ILLEGAL_ARGUMENT_ERROR ;
 int php_intl_idn_check_status (int ,char const*) ;

__attribute__((used)) static inline void php_intl_bad_args(const char *msg)
{
 php_intl_idn_check_status(U_ILLEGAL_ARGUMENT_ERROR, msg);
}
