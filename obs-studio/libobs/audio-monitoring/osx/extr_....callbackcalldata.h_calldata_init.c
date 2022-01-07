
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calldata {int dummy; } ;


 int memset (struct calldata*,int ,int) ;

__attribute__((used)) static inline void calldata_init(struct calldata *data)
{
 memset(data, 0, sizeof(struct calldata));
}
