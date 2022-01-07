
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flash_mass_erase () ;

__attribute__((used)) static int do_mass_erase(void) {

    return flash_mass_erase();
}
