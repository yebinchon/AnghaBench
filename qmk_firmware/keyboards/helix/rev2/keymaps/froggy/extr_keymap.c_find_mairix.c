
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;


 size_t MATRIX_COLS ;
 size_t MATRIX_ROWS ;
 size_t _BASE ;
 int *** keymaps ;
 scalar_t__ pgm_read_word (int *) ;

bool find_mairix(uint16_t keycode, uint8_t *row, uint8_t *col){
  for(uint8_t i=0; i<MATRIX_ROWS; i++){
    for(uint8_t j=0; j<MATRIX_COLS; j++){
      if( pgm_read_word(&(keymaps[_BASE][i][j]))==keycode){
        *row = i;
        *col = j;
        return 1;
      }
    }
  }
  return 0;
}
