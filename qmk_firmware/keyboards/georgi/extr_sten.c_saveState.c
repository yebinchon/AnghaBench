
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int chordIndex ;
 int * chordState ;
 int pChord ;
 int pChordIndex ;
 int * pChordState ;

void saveState(uint32_t cleanChord) {
 pChord = cleanChord;
 pChordIndex = chordIndex;
 for (int i = 0; i < 32; i++)
  pChordState[i] = chordState[i];
}
