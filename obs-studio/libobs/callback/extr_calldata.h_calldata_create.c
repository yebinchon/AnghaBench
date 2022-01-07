
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calldata {int dummy; } ;
typedef int calldata_t ;


 scalar_t__ bzalloc (int) ;

__attribute__((used)) static inline calldata_t *calldata_create(void)
{
 return (calldata_t *)bzalloc(sizeof(struct calldata));
}
