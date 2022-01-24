#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  v; int /*<<< orphan*/  s; int /*<<< orphan*/  h; } ;
struct TYPE_10__ {TYPE_1__ hsv; scalar_t__ enable; } ;
struct TYPE_9__ {unsigned int s; int v; int /*<<< orphan*/  h; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int r; int g; int b; } ;
typedef  TYPE_2__ RGB ;
typedef  TYPE_3__ HSV ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  USB_LED_NUM_LOCK ; 
#define  _FNC 129 
#define  _NAV 128 
 int /*<<< orphan*/  autoshift_enabled ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_suspend_state ; 
 int FUNC3 () ; 
 TYPE_2__ FUNC4 (TYPE_3__) ; 
 int /*<<< orphan*/  layer_state ; 
 TYPE_4__ rgb_matrix_config ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 

void FUNC6(void)
{
	if (FUNC0(USB_LED_CAPS_LOCK)) {
		FUNC5(8, 0xFF, 0xFF, 0xFF);
	}

	uint8_t this_led = FUNC3();

	if (!g_suspend_state && rgb_matrix_config.enable) {
		switch (FUNC2(layer_state)) {
		case _NAV:
			if (FUNC1(this_led, USB_LED_NUM_LOCK)) {
				FUNC5(17, 0xFF, 0x00, 0x00);
				FUNC5(26, 0xFF, 0xFF, 0x00);
			} else {
				FUNC5(17, 0x00, 0x00, 0x00);
				FUNC5(26, 0xFF, 0x00, 0x00);
			}

			FUNC5(8, 0xFF, 0xFF, 0xFF); // layer indicator
			// ESDF
			FUNC5(4, 0xFF, 0x00, 0x00);
			FUNC5(47, 0xFF, 0x00, 0x00);
			FUNC5(46, 0xFF, 0x00, 0x00);
			FUNC5(45, 0xFF, 0x00, 0x00);
			// home/end
			FUNC5(5, 0x00, 0xFF, 0x00);
			FUNC5(3, 0x00, 0xFF, 0x00);
			// pgup/dn
			FUNC5(6, 0x00, 0x00, 0xFF);
			FUNC5(48, 0x00, 0x00, 0xFF);
			// numpad
			FUNC5(10,  0xFF, 0xFF, 0x00);
			FUNC5(9,  0xFF, 0xFF, 0x00);
			FUNC5(18,  0xFF, 0xFF, 0x00);
			FUNC5(0, 0xFF, 0xFF, 0x00);
			FUNC5(27, 0xFF, 0xFF, 0x00);
			FUNC5(51, 0xFF, 0xFF, 0x00);
			FUNC5(52, 0xFF, 0xFF, 0x00);
			FUNC5(53, 0xFF, 0xFF, 0x00);
			// zero
			FUNC5(60, 0xFF, 0x00, 0x00);
			FUNC5(61, 0xFF, 0x00, 0x00);
			FUNC5(62, 0xFF, 0x00, 0x00);
			// dot
			FUNC5(63, 0x00, 0x00, 0xFF);
			// math shit
			FUNC5(19,  0x00, 0x00, 0xFF);
			FUNC5(20,  0x00, 0x00, 0xFF);
			FUNC5(21,  0x00, 0x00, 0xFF);
			FUNC5(28,  0x00, 0x00, 0xFF);
			FUNC5(24,  0x00, 0x00, 0xFF); // macro minus
			FUNC5(25,  0x00, 0x00, 0xFF); // macro plus
			// other
			FUNC5(29, 0xFF, 0xFF, 0xFF);
			FUNC5(30, 0xFF, 0xFF, 0xFF);
			FUNC5(31, 0xFF, 0xFF, 0xFF);
			break;

		case _FNC: {
			HSV hsv = { rgb_matrix_config.hsv.h, rgb_matrix_config.hsv.s, rgb_matrix_config.hsv.v };
			HSV hui = hsv;
			HSV hud = hsv;
			HSV sai = hsv;
			HSV sad = hsv;
			HSV vai = hsv;
			HSV vad = hsv;
			hui.h = hsv.h + 8;
			hud.h = hsv.h - 8;
			sai.s = hsv.s + 16 > 255 ? 255u : hsv.s + 16;
			sad.s = hsv.s - 16 < 0   ?   0 : hsv.s - 16;
			vai.v = hsv.v + 16 > 255 ? 255 : hsv.v + 16;
			vad.v = hsv.v - 16 < 0   ?   0 : hsv.v - 16;
			RGB rgb = FUNC4(hsv);
			RGB rgbHUI = FUNC4(hui);
			RGB rgbHUD = FUNC4(hud);
			RGB rgbSAI = FUNC4(sai);
			RGB rgbSAD = FUNC4(sad);
			RGB rgbVAI = FUNC4(vai);
			RGB rgbVAD = FUNC4(vad);
			FUNC5(65, 0xFF, 0xFF, 0xFF); // layer indicator
			FUNC5(36, 0xFF, 0x00, 0x00); // MASBOOT
			FUNC5(37, 0xFF, 0x00, 0x40); // REEPROM
			FUNC5(37, 0xFF, 0x00, 0x40); // 60
			FUNC5(59, 0x00, 0x80, 0xFF); // KC_VOLU
			FUNC5(34, 0x00, 0x80, 0xFF);
			FUNC5(32, 0xFF, 0x00, 0x00); // KC_MUTE
			FUNC5(24, 0xFF, 0x40, 0x00); // KC_MPRV
			FUNC5(25, 0xFF, 0x40, 0x00);

			if (this_led & (1 << !autoshift_enabled)) {
				FUNC5(15, 0xFF, 0x00, 0x00); // KC_ASTG
			} else {
				FUNC5(15, 0xFF, 0xFF, 0x00);
			}

			FUNC5(6, 0xFF, 0x80, 0x00); //RGB_MOD
			FUNC5(48, 0xFF, 0x80, 0x00);
			FUNC5(29, 0xFF, 0x80, 0x00); //RGB_MOD
			FUNC5(30, 0xFF, 0x80, 0x00);
			FUNC5(40, 0xFF, 0x40, 0x00); //RGB_TOG
			FUNC5(4, rgbHUI.r, rgbHUI.g, rgbHUI.b); //RGB_HUI
			FUNC5(46, rgbHUD.r, rgbHUD.g, rgbHUD.b);
			FUNC5(3, rgbSAI.r, rgbSAI.g, rgbSAI.b); //RGB_SAI
			FUNC5(45, rgbSAD.r, rgbSAD.g, rgbSAD.b);
			FUNC5(2, rgbVAI.r, rgbVAI.g, rgbVAI.b); //RGB_VAI
			FUNC5(44, rgbVAD.r, rgbVAD.g, rgbVAD.b);
			FUNC5(35, rgb.r, rgb.g, rgb.b); // config display
			FUNC5(5, 0x80, 0x80, 0x80); //RGB_SPI
			FUNC5(47, 0x80, 0x80, 0x80);
			FUNC5(67, 0x80, 0x80, 0x80); //RGB_SPI
			FUNC5(33, 0x80, 0x80, 0x80);
			FUNC5(26, 0xF0, 0x00, 0xFF); //MAS_MGT
			FUNC5(27, 0x00, 0x02, 0xFF); //MAS_BLU
			FUNC5(51, 0xFF, 0x00, 0x00); //MAS_RED
			FUNC5(52, 0x00, 0x00, 0x00); //MAS_KEY
			FUNC5(53, 0x00, 0xFF, 0xF7); //MAS_CYN
			FUNC5(61, 0xFF, 0xDA, 0x00); //MAS_YEL
			FUNC5(62, 0x00, 0xFF, 0x01); //MAS_GRN
			FUNC5(63, 0xFF, 0xA5, 0x18); //MAS_CRM
			FUNC5(54, 0x81, 0x3C, 0xFF); //MAS_PRP
			FUNC5(28, 0xFF, 0xFF, 0xFF); //MAS_WHT
		}
		break;
		}
	}
}