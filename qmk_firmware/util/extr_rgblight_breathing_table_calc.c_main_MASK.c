#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;

/* Variables and functions */
 int M_E ; 
 int M_PI ; 
 int RGBLIGHT_EFFECT_BREATHE_CENTER ; 
 int RGBLIGHT_EFFECT_BREATHE_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(void) {
    int pos, step;
    int table[256];
    for (pos = 0; pos < 256; pos ++ ) {
        table[pos] = (uint8_t)(
              (FUNC0(FUNC2((pos/255.0)*M_PI))- RGBLIGHT_EFFECT_BREATHE_CENTER/M_E)
              * (RGBLIGHT_EFFECT_BREATHE_MAX/(M_E-1/M_E))
              );
    }
    FUNC1("#ifndef RGBLIGHT_EFFECT_BREATHE_TABLE\n");
    FUNC1("#define RGBLIGHT_EFFECT_BREATHE_TABLE\n\n");
    FUNC1("const uint8_t rgblight_effect_breathe_table[] PROGMEM = {\n");
    FUNC1("  /* #define RGBLIGHT_EFFECT_BREATHE_CENTER   %.2f */\n", RGBLIGHT_EFFECT_BREATHE_CENTER);
    FUNC1("  /* #define RGBLIGHT_EFFECT_BREATHE_MAX      %d */\n", RGBLIGHT_EFFECT_BREATHE_MAX);

    for (int s = 0, step = (1<<s); s < 3 ; s += 1, step = (1<<s) ) {
        FUNC1("\n #if RGBLIGHT_BREATHE_TABLE_SIZE == %d\n",
               s == 0 ? 256:(s== 1 ? 128: 64));
        for (pos = 0; pos < 256; pos += step ) {
            FUNC1("  0x%x%s", table[pos], (pos+step)>=256?"":"," );
            if ((pos+step) % 8 == 0)
                FUNC1("\n");
        }
        FUNC1(" #endif /* %d bytes table */\n", s == 0 ? 256:(s== 1 ? 128: 64));
    }
    FUNC1("};\n");
    FUNC1("\nstatic const int table_scale = 256/sizeof(rgblight_effect_breathe_table);\n");
    FUNC1("\n#endif /* RGBLIGHT_EFFECT_BREATHE_TABLE */\n");
    return 0;
}