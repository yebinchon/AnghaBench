
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_item {int dummy; } ;


 int memset (struct error_item*,int ,int) ;

__attribute__((used)) static inline void error_item_init(struct error_item *ei)
{
 memset(ei, 0, sizeof(struct error_item));
}
