
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int st32 ;


 int r_num_math (int *,char*) ;

__attribute__((used)) static st32 thumb_getoffset(char *label, ut64 cur) {
 st32 res = r_num_math (((void*)0), label);
 res -= 4;
 res -= cur;

 return res;
}
