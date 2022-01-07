
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int pg_strong_random (int *,int) ;

__attribute__((used)) static bool
RandomCancelKey(int32 *cancel_key)
{
 return pg_strong_random(cancel_key, sizeof(int32));
}
