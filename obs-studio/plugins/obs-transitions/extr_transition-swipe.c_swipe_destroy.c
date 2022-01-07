
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swipe_info {int dummy; } ;


 int bfree (struct swipe_info*) ;

__attribute__((used)) static void swipe_destroy(void *data)
{
 struct swipe_info *swipe = data;
 bfree(swipe);
}
