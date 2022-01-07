
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_lcg_globals ;
typedef int LCG ;



__attribute__((used)) static void lcg_init_globals(php_lcg_globals *lcg_globals_p)
{
 LCG(seeded) = 0;
}
