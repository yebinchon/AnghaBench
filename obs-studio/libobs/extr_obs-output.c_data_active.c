
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int data_active; } ;


 int os_atomic_load_bool (int *) ;

__attribute__((used)) static inline bool data_active(struct obs_output *output)
{
 return os_atomic_load_bool(&output->data_active);
}
