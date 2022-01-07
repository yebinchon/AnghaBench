
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int TC_ACT_OK ;

__attribute__((section("action-ok"),used)) int action_ok(struct __sk_buff *s)
{
 return TC_ACT_OK;
}
