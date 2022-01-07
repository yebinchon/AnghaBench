
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_item {int error; } ;


 int bfree (int ) ;
 int error_item_init (struct error_item*) ;

__attribute__((used)) static inline void error_item_free(struct error_item *ei)
{
 bfree(ei->error);
 error_item_init(ei);
}
