
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;


 scalar_t__ mp_sws_supported_format (int) ;

__attribute__((used)) static int query_format(struct vo *vo, int fmt)
{
    if (mp_sws_supported_format(fmt))
        return 1;
    return 0;
}
