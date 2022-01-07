
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int ERR_PACK (int,int ,int) ;
 int c_vset_error (int *,int ,char const*,int ) ;

void ERR_vset_error(int lib, int reason, const char *fmt, va_list args)
{
    c_vset_error(((void*)0), ERR_PACK(lib, 0, reason), fmt, args);
}
