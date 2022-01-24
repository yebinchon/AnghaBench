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
 int USB_LED_NUM_LOCK ; 
#define  _FNC 129 
#define  _NAV 128 
 int /*<<< orphan*/  autoshift_enabled ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_suspend_state ; 
 int FUNC1 () ; 
 TYPE_2__ FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  layer_state ; 
 TYPE_4__ rgb_matrix_config ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 

void FUNC4(void)
{
	uint8_t this_led = FUNC1();

	if (!g_suspend_state && rgb_matrix_config.enable) {
		switch (FUNC0(layer_state)) {
		case _NAV:
			if (this_led & (1 << USB_LED_NUM_LOCK)) {
				FUNC3(41, 0xFF, 0x00, 0x00);
			} else {
				FUNC3(41, 0x00, 0x00, 0x00);
			}

			// layer indicator
			FUNC3(50, 0xFF, 0xFF, 0xFF);
			FUNC3(101, 0xFF, 0xFF, 0xFF);
			// ESDF
			FUNC3(36, 0xFF, 0x00, 0x00);
			FUNC3(52, 0xFF, 0x00, 0x00);
			FUNC3(53, 0xFF, 0x00, 0x00);
			FUNC3(54, 0xFF, 0x00, 0x00);
			// home/end
			FUNC3(35, 0x00, 0xFF, 0x00);
			FUNC3(37, 0x00, 0xFF, 0x00);
			// pgup/dn
			FUNC3(34, 0x00, 0x00, 0xFF);
			FUNC3(51, 0x00, 0x00, 0xFF);
			// numpad
			FUNC3(23, 0xFF, 0xFF, 0x00);
			FUNC3(24, 0xFF, 0xFF, 0x00);
			FUNC3(25, 0xFF, 0xFF, 0x00);
			FUNC3(40, 0xFF, 0xFF, 0x00);
			FUNC3(42, 0xFF, 0xFF, 0x00);
			FUNC3(57, 0xFF, 0xFF, 0x00);
			FUNC3(58, 0xFF, 0xFF, 0x00);
			FUNC3(59, 0xFF, 0xFF, 0x00);
			// zero
			FUNC3(69, 0xFF, 0x00, 0x00);
			FUNC3(70, 0xFF, 0x00, 0x00);
			FUNC3(71, 0xFF, 0x00, 0x00);
			// dot
			FUNC3(72, 0x00, 0x00, 0xFF);
			// math shit
			FUNC3(26,  0x00, 0x00, 0xFF);
			FUNC3(27,  0x00, 0x00, 0xFF);
			FUNC3(28,  0x00, 0x00, 0xFF);
			FUNC3(43,  0x00, 0x00, 0xFF);
			FUNC3(46,  0x00, 0x00, 0xFF);
			FUNC3(60,  0x00, 0x00, 0xFF);
			FUNC3(61,  0x00, 0x00, 0xFF);
			FUNC3(73,  0x00, 0x00, 0xFF);
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
			RGB rgb = FUNC2(hsv);
			RGB rgbHUI = FUNC2(hui);
			RGB rgbHUD = FUNC2(hud);
			RGB rgbSAI = FUNC2(sai);
			RGB rgbSAD = FUNC2(sad);
			RGB rgbVAI = FUNC2(vai);
			RGB rgbVAD = FUNC2(vad);
			FUNC3(81, 0xFF, 0xFF, 0xFF); // layer indicator
			FUNC3(91, 0xFF, 0xFF, 0xFF);
			FUNC3(93, 0x00, 0x00, 0x00);
			FUNC3(94, rgb.r, rgb.g, rgb.b);
			FUNC3(95, rgb.r, rgb.g, rgb.b);
			FUNC3(96, 0x00, 0x00, 0x00);
			FUNC3(68, 0xFF, 0x00, 0x00); // MD_BOOT
			FUNC3(69, 0xFF, 0x00, 0x40); // TG_NKRO
			FUNC3(32, 0x00, 0x80, 0xFF); // KC_VOLU
			FUNC3(49, 0x00, 0x80, 0xFF);
			FUNC3(13, 0xFF, 0x00, 0x00); // KC_MUTE
			FUNC3(30, 0xFF, 0x00, 0x00); // KC_MSTP
			FUNC3(47, 0xFF, 0x40, 0x00); // KC_MPRV
			FUNC3(48, 0xFF, 0x40, 0x00);
			FUNC3(14, 0x00, 0xFF, 0x00); // KC_MSEL
			FUNC3(31, 0x00, 0xFF, 0x00); // KC_MPLY

			if (this_led & (1 << !autoshift_enabled)) {
				FUNC3(15, 0xFF, 0x00, 0x00); // KC_ASTG
			} else {
				FUNC3(15, 0xFF, 0xFF, 0x00);
			}

			FUNC3(44, 0xFF, 0x80, 0x00); //RGB_MOD
			FUNC3(45, 0xFF, 0x80, 0x00);
			FUNC3(34, 0xFF, 0x80, 0x00); //RGB_MOD
			FUNC3(51, 0xFF, 0x80, 0x00);
			FUNC3(63, 0xFF, 0x40, 0x00); //RGB_TOG
			FUNC3(64, rgb.r, rgb.g, rgb.b); //MAS_TOG
			FUNC3(36, rgbHUI.r, rgbHUI.g, rgbHUI.b); //RGB_HUI
			FUNC3(53, rgbHUD.r, rgbHUD.g, rgbHUD.b);
			FUNC3(37, rgbSAI.r, rgbSAI.g, rgbSAI.b); //RGB_SAI
			FUNC3(54, rgbSAD.r, rgbSAD.g, rgbSAD.b);
			FUNC3(38, rgbVAI.r, rgbVAI.g, rgbVAI.b); //RGB_VAI
			FUNC3(55, rgbVAD.r, rgbVAD.g, rgbVAD.b);
			FUNC3(79, rgb.r, rgb.g, rgb.b); // config display
			FUNC3(75, rgbVAI.r, rgbVAI.g, rgbVAI.b); //RGB_VAI
			FUNC3(85, rgbVAD.r, rgbVAD.g, rgbVAD.b);
			FUNC3(35, 0x80, 0x80, 0x80); //RGB_SPI
			FUNC3(52, 0x80, 0x80, 0x80);
			FUNC3(84, 0x80, 0x80, 0x80); //RGB_SPI
			FUNC3(86, 0x80, 0x80, 0x80);
			FUNC3(41, 0xF0, 0x00, 0xFF); //MAS_MGT
			FUNC3(42, 0x00, 0x02, 0xFF); //MAS_BLU
			FUNC3(57, 0xFF, 0x00, 0x00); //MAS_RED
			FUNC3(58, 0x00, 0x00, 0x00); //MAS_KEY
			FUNC3(59, 0x00, 0xFF, 0xF7); //MAS_CYN
			FUNC3(70, 0xFF, 0xDA, 0x00); //MAS_YEL
			FUNC3(71, 0x00, 0xFF, 0x01); //MAS_GRN
			FUNC3(72, 0xFF, 0xA5, 0x18); //MAS_CRM
			FUNC3(60, 0x81, 0x3C, 0xFF); //MAS_PRP
			FUNC3(43, 0xFF, 0xFF, 0xFF); //MAS_WHT
		}
		break;
		}
	}
}