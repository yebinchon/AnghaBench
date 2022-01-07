
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int steno_mode_t ;


 int * CMDBUF ;
 int CMDLEN ;
 scalar_t__ COMMAND ;
 int FN ;
 int PWR ;
 int QWERSTENO ;
 scalar_t__ QWERTY ;
 int RD ;
 int RZ ;
 int ST1 ;
 int ST2 ;
 int ST3 ;
 int ST4 ;
 scalar_t__ STENO ;
 int cChord ;
 scalar_t__ cMode ;
 scalar_t__ chordIndex ;
 int* chordState ;
 int clear_keyboard () ;
 int inChord ;
 int inMouse ;
 int keymapsCount ;
 int layer_on (int) ;
 int mousePress ;
 int mousekey_off (int ) ;
 int mousekey_send () ;
 scalar_t__ pMode ;
 int processChord (int) ;
 int register_code (int ) ;
 int repEngaged ;
 int uprintf (char*) ;

bool send_steno_chord_user(steno_mode_t mode, uint8_t chord[6]) {
 if (cChord == (PWR | FN | ST1 | ST2)) {

  uprintf("Fallback Toggle\n");

  QWERSTENO = !QWERSTENO;

  goto out;
 }


 if (cChord == (PWR | FN | RD | RZ)) {

  uprintf("COMMAND Toggle\n");

  if (cMode != COMMAND) {
   CMDLEN = 0;
   pMode = cMode;
   cMode = COMMAND;
  } else {
   cMode = pMode;


   for (int i = 0; i < CMDLEN; i++) {
    register_code(CMDBUF[i]);
   }
   clear_keyboard();
  }

  goto out;
 }


 if (cChord == (PWR | FN | ST4 | ST3) && keymapsCount > 1) {

  uprintf("Switching to QMK\n");

  layer_on(1);
  goto out;
 }



 if (cChord == FN) {
  (cMode == STENO) ? (cMode = QWERTY) : (cMode = STENO);
  goto out;
 }



 if (cMode == QWERTY && (cChord & FN)) {
  cChord ^= FN;
  goto steno;
 }


 if (cMode == QWERTY || (cMode == COMMAND) || (cChord & (FN | PWR))) {
  processChord(0);
  goto out;
 }


 if (cMode == STENO && QWERSTENO) {
  processChord(1);
  goto out;
 }

steno:

 inChord = 0;
 chordIndex = 0;
 cChord = 0;
 return 1;

out:
 cChord = 0;
 inChord = 0;
 chordIndex = 0;
 clear_keyboard();
 repEngaged = 0;
 for (int i = 0; i < 32; i++)
  chordState[i] = 0xFFFF;

 return 0;
}
