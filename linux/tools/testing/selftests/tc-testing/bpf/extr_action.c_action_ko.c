
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int data; } ;


 int TC_ACT_OK ;

__attribute__((section("action-ko"),used)) int action_ko(struct __sk_buff *s)
{
 s->data = 0x0;
 return TC_ACT_OK;
}
