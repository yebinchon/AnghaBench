
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan {int dummy; } ;


 int default_config ;
 int lwan_init_with_config (struct lwan*,int *) ;

void lwan_init(struct lwan *l) { lwan_init_with_config(l, &default_config); }
