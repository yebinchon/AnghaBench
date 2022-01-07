
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 int MySubscriptionValid ;

__attribute__((used)) static void
subscription_change_cb(Datum arg, int cacheid, uint32 hashvalue)
{
 MySubscriptionValid = 0;
}
