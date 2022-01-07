
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBGC (int ) ;
 int DC_LED_MATRIX_INIT_BEGIN ;
 int DC_LED_MATRIX_INIT_COMPLETE ;
 scalar_t__ gcr_min_counter ;
 int issi3733_prepare_arrays () ;
 int led_matrix_prepare () ;
 scalar_t__ v_5v_cat_hit ;

void init(void) {
    DBGC(DC_LED_MATRIX_INIT_BEGIN);

    issi3733_prepare_arrays();

    led_matrix_prepare();

    gcr_min_counter = 0;
    v_5v_cat_hit = 0;

    DBGC(DC_LED_MATRIX_INIT_COMPLETE);
}
