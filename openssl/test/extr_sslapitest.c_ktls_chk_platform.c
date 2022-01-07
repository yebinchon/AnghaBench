
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktls_enable (int) ;

__attribute__((used)) static int ktls_chk_platform(int sock)
{
    if (!ktls_enable(sock))
        return 0;
    return 1;
}
