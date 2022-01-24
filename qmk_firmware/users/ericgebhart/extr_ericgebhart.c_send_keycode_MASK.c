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
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(uint8_t kc){
  uint8_t tmp_mods = FUNC6();
  bool is_shifted = ( tmp_mods & (FUNC0(KC_LSFT)|FUNC0(KC_RSFT)) );
  //uint8_t key[2][2] = key_translations[GR(kc)];
  // need to turn of the shift if it is on.
  FUNC10((FUNC0(KC_LSFT)|FUNC0(KC_RSFT)));
  if(is_shifted){
    FUNC8(FUNC2(kc));
    FUNC7(FUNC1(kc));
    FUNC9(FUNC1(kc));
    FUNC10(FUNC2(kc));
  } else{
    FUNC8(FUNC4(kc));
    FUNC7(FUNC3(kc));
    FUNC9(FUNC3(kc));
    FUNC10(FUNC4(kc));
  }
  FUNC5();
  FUNC8(tmp_mods);
}