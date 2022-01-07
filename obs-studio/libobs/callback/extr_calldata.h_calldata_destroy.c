
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int bfree (int *) ;
 int calldata_free (int *) ;

__attribute__((used)) static inline void calldata_destroy(calldata_t *cd)
{
 calldata_free(cd);
 bfree(cd);
}
