
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int member_1; int member_0; } ;
struct TYPE_5__ {int l; int s; } ;
typedef TYPE_1__ MYSQLND_STRING ;
typedef TYPE_2__ const MYSQLND_CSTRING ;



__attribute__((used)) static inline MYSQLND_CSTRING mnd_str2c(const MYSQLND_STRING str)
{
 const MYSQLND_CSTRING ret = {str.s, str.l};
 return ret;
}
