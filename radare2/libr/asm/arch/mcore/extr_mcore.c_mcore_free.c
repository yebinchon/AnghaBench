
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mcore_t ;


 int free (int *) ;

void mcore_free(mcore_t* instr) {
 free (instr);
}
