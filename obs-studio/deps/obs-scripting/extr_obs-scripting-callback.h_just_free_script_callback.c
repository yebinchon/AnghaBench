
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_callback {int extra; } ;


 int bfree (struct script_callback*) ;
 int calldata_free (int *) ;

__attribute__((used)) static inline void just_free_script_callback(struct script_callback *cb)
{
 calldata_free(&cb->extra);
 bfree(cb);
}
