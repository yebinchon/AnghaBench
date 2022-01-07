
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FN ;
 int PWR ;
 int QWERBUF ;
 int cChord ;
 int chordIndex ;
 int* chordState ;
 int processFakeSteno (int) ;
 int processQwerty (int) ;
 int repeatFlag ;
 int restoreState () ;
 int saveState (int) ;
 int stickyBits ;

void processChord(bool useFakeSteno) {

 uint32_t savedChord = cChord;


 if (stickyBits != 0) {
  cChord |= stickyBits;
  for (int i = 0; i <= chordIndex; i++)
   chordState[i] |= stickyBits;
 }


 if (cChord & FN) cChord ^= FN;



 if (useFakeSteno && processFakeSteno(1) == cChord) {
  processFakeSteno(0);
  return;
 } else if (processQwerty(1) == cChord) {
  processQwerty(0);

  if (repeatFlag) {
   restoreState();
   repeatFlag = 0;
   processChord(0);
  } else {
   saveState(cChord);
  }
  return;
 }



 uint32_t bufChords[QWERBUF];
 int bufLen = 0;
 uint32_t mask = 0;



 while (savedChord != mask) {
  uint32_t test = 0;
  uint32_t longestChord = 0;

  for (int i = 0; i <= chordIndex; i++) {
   cChord = chordState[i] & ~mask;
   if (cChord == 0)
    continue;


   if (i != 0 && test != 0 && (cChord ^ test) == PWR) {
    longestChord = test;
    break;
   }


   if (mask & PWR)
    cChord |= PWR;



   if (useFakeSteno) {
    test = processFakeSteno(1);
   } else {
    test = processQwerty(1);
   }

   if (test != 0) {
    longestChord = test;
   }
  }

  mask |= longestChord;
  bufChords[bufLen] = longestChord;
  bufLen++;


  if (bufLen >= QWERBUF) {
   return;
  }
 }


 for (int i = 0; i < bufLen ; i++) {
  cChord = bufChords[i];
  if (useFakeSteno) {
   processFakeSteno(0);
  } else {
   processQwerty(0);
  }
 }


 if (!repeatFlag) {
  saveState(savedChord);
 }


 cChord = savedChord;

 return;
}
