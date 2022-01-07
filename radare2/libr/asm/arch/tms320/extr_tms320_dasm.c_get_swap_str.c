
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



const char * get_swap_str(ut8 key, char * str)
{
 switch (key) {
 case 0: return "swap ac0, ac2";
 case 1: return "swap ac1, ac3";
 case 4: return "swap t0, t2";
 case 5: return "swap t1, t3";
 case 8: return "swap ar0, ar2";
 case 9: return "swap ar1, ar3";
 case 12: return "swap ar4, t0";
 case 13: return "swap ar5, t1";
 case 14: return "swap ar6, t2";
 case 15: return "swap ar7, t3";
 case 16: return "swapp ac0, ac2";
 case 20: return "swapp t0, t2";
 case 24: return "swapp ar0, ar2";
 case 28: return "swapp ar4, t0";
 case 30: return "swapp ar6, t2";
 case 44: return "swap4 ar4, t0";
 case 56: return "swap ar0, ar1";
 }

 return "invalid";
}
