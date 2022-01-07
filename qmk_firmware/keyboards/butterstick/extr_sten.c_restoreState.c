
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cChord ;
 int chordIndex ;
 int * chordState ;
 int pChord ;
 int pChordIndex ;
 int * pChordState ;

void restoreState() {
 cChord = pChord;
 chordIndex = pChordIndex;
 for (int i = 0; i < 32; i++)
  chordState[i] = pChordState[i];
}
