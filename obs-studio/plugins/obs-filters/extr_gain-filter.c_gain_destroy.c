
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gain_data {int dummy; } ;


 int bfree (struct gain_data*) ;

__attribute__((used)) static void gain_destroy(void *data)
{
 struct gain_data *gf = data;
 bfree(gf);
}
