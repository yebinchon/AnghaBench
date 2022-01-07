
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vle_t ;


 int free (int *) ;

void vle_free(vle_t* instr) {
 free (instr);
}
