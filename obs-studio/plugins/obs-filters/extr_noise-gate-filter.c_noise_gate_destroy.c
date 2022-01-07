
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noise_gate_data {int dummy; } ;


 int bfree (struct noise_gate_data*) ;

__attribute__((used)) static void noise_gate_destroy(void *data)
{
 struct noise_gate_data *ng = data;
 bfree(ng);
}
