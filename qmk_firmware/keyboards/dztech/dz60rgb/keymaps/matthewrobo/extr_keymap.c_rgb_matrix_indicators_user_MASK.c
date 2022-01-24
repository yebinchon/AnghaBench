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
struct TYPE_9__ {int s; int v; int /*<<< orphan*/  h; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int r; int g; int b; } ;
typedef  TYPE_2__ RGB ;
typedef  TYPE_3__ HSV ;

/* Variables and functions */
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
#define  _FNC 130 
#define  _NAV 129 
#define  _RGB 128 
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
				FUNC3(13, 0xFF, 0x00, 0x00);
				FUNC3(19, 0xFF, 0xFF, 0x00);
			} else {
				FUNC3(13, 0x00, 0x00, 0x00);
				FUNC3(19, 0xFF, 0x00, 0x00);
			}

			FUNC3(40, 0xFF, 0xFF, 0xFF); // layer indicator
			// ESDF
			FUNC3(24, 0xFF, 0x00, 0x00);
			FUNC3(38, 0xFF, 0x00, 0x00);
			FUNC3(37, 0xFF, 0x00, 0x00);
			FUNC3(36, 0xFF, 0x00, 0x00);
			// home/end
			FUNC3(25, 0x00, 0xFF, 0x00);
			FUNC3(23, 0x00, 0xFF, 0x00);
			// pgup/dn
			FUNC3(26, 0x00, 0x00, 0xFF);
			FUNC3(39, 0x00, 0x00, 0xFF);
			// numpad
			FUNC3(6,  0xFF, 0xFF, 0x00);
			FUNC3(5,  0xFF, 0xFF, 0x00);
			FUNC3(4,  0xFF, 0xFF, 0x00);
			FUNC3(20, 0xFF, 0xFF, 0x00);
			FUNC3(18, 0xFF, 0xFF, 0x00);
			FUNC3(33, 0xFF, 0xFF, 0x00);
			FUNC3(32, 0xFF, 0xFF, 0x00);
			FUNC3(31, 0xFF, 0xFF, 0x00);
			// zero
			FUNC3(47, 0xFF, 0x00, 0x00);
			FUNC3(46, 0xFF, 0x00, 0x00);
			FUNC3(45, 0xFF, 0x00, 0x00);
			// dot
			FUNC3(44, 0x00, 0x00, 0xFF);
			// math shit
			FUNC3(3,  0x00, 0x00, 0xFF);
			FUNC3(2,  0x00, 0x00, 0xFF);
			FUNC3(1,  0x00, 0x00, 0xFF);
			FUNC3(0,  0x00, 0x00, 0xFF);
			FUNC3(17, 0x00, 0x00, 0xFF);
			// other
			FUNC3(16, 0xFF, 0xFF, 0xFF);
			FUNC3(15, 0xFF, 0xFF, 0xFF);
			FUNC3(14, 0xFF, 0xFF, 0xFF);
			break;

		case _RGB: {
			HSV hsv = { rgb_matrix_config.hsv.h, rgb_matrix_config.hsv.s, rgb_matrix_config.hsv.v };
			HSV hui = hsv;
			HSV hud = hsv;
			HSV sai = hsv;
			HSV sad = hsv;
			HSV vai = hsv;
			HSV vad = hsv;
			hui.h = hsv.h + 8;
			hud.h = hsv.h - 8;
			sai.s = hsv.s + 16 > 255 ? 255 : hsv.s + 16;
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
			FUNC3(41, 0xFF, 0xFF, 0xFF); // layer indicator
			FUNC3(59, rgb.r, rgb.g, rgb.b); // color indicator
			FUNC3(26, 0xFF, 0x80, 0x00); //MOD
			FUNC3(39, 0xFF, 0x80, 0x00); //MOD
			FUNC3(16, 0xFF, 0x80, 0x00); //RGB_RMOD
			FUNC3(15, 0xFF, 0x80, 0x00); //MOD
			FUNC3(52, 0xFF, 0x40, 0x00); //TOG
			FUNC3(25, 0x80, 0x80, 0x80); //SPI
			FUNC3(38, 0x80, 0x80, 0x80); //SPD
			FUNC3(24, rgbHUI.r, rgbHUI.g, rgbHUI.b); //HUI
			FUNC3(37, rgbHUD.r, rgbHUD.g, rgbHUD.b); //HUD
			FUNC3(23, rgbSAI.r, rgbSAI.g, rgbSAI.b); //SAI
			FUNC3(36, rgbSAD.r, rgbSAD.g, rgbSAD.b); //SAD
			FUNC3(22, rgbVAI.r, rgbVAI.g, rgbVAI.b); //VAI
			FUNC3(35, rgbVAD.r, rgbVAD.g, rgbVAD.b); //VAD
			FUNC3(19, 0xF0, 0x00, 0xFF); //MAS_MGT
			FUNC3(18, 0x00, 0x02, 0xFF); //MAS_BLU
			FUNC3(33, 0xFF, 0x00, 0x00); //MAS_RED
			FUNC3(32, 0x00, 0x00, 0x00); //MAS_KEY
			FUNC3(31, 0x00, 0xFF, 0xF7); //MAS_CYN
			FUNC3(46, 0xFF, 0xDA, 0x00); //MAS_YEL
			FUNC3(45, 0x00, 0xFF, 0x01); //MAS_GRN
			FUNC3(44, 0xFF, 0xA5, 0x18); //MAS_CRM
			FUNC3(30, 0x81, 0x3C, 0xFF); //MAS_PRP
			FUNC3(17, 0xFF, 0xFF, 0xFF); //MAS_WHT
		}
		break;

		case _FNC:
			FUNC3(57, 0xFF, 0xFF, 0xFF); // layer indicator
			FUNC3(48, 0xFF, 0x00, 0x00); // bootloader
			FUNC3(42, 0x00, 0x80, 0xFF); // vol
			FUNC3(55, 0x00, 0x80, 0xFF);
			FUNC3(58, 0xFF, 0x00, 0x00); // mute
			FUNC3(56, 0xFF, 0x80, 0x00); // ctrl+left/right
			FUNC3(54, 0xFF, 0x80, 0x00);
			FUNC3(41, 0xFF, 0x00, 0x40); // ctrl+delete
			FUNC3(43, 0xFF, 0x00, 0x40); // ctrl+slash

			if (this_led & (1 << !autoshift_enabled)) {
				FUNC3(0, 0xFF, 0x00, 0x00); // KC_ASTG
			} else {
				FUNC3(0, 0xFF, 0xFF, 0x00);
			}

			break;
		}
	}

	if (this_led & (1 << USB_LED_CAPS_LOCK)) {
		FUNC3(40, 0xFF, 0xFF, 0xFF);
	}
}