
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 int OK ;
 scalar_t__ TRUE ;
 scalar_t__ is_photon_available ;

int
gui_mch_init_check(void)
{
    return (is_photon_available == TRUE) ? OK : FAIL;
}
