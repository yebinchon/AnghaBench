
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int matrix_row_t ;


 int B4 ;
 int B5 ;
 int B6 ;
 int C6 ;
 int C7 ;
 int D6 ;
 int D7 ;
 int E6 ;
 int F0 ;
 int F1 ;
 int F4 ;
 int F5 ;
 int F6 ;
 int F7 ;
 int MATRIX_ROWS ;
 scalar_t__ VIBRATE_LENGTH ;
 int _BV (int) ;
 int decodeArray (int,int*,int*) ;
 scalar_t__ isTouchChangeDetected () ;
 int * matrix ;
 int matrix_is_on (int,int) ;
 int matrix_scan_quantum () ;
 int memset (int *,int ,int) ;
 int touchClearCurrentDetections () ;
 int touchDetectionRoutine () ;
 scalar_t__ vibrate ;
 int writePin (int ,int) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

uint8_t matrix_scan(void) {
  if (isTouchChangeDetected()) {
    uint16_t dataIn = touchDetectionRoutine();
    if ((dataIn & 0b111100010001) > 0 && (dataIn & 0b000011101110) > 0) {
      uint8_t column = 10, row = 10;
      decodeArray(dataIn, &column, &row);
      if (column != 10 && row != 10) {
        vibrate = VIBRATE_LENGTH;
        matrix[row] = _BV(column);
      } else {
        memset(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
      }
    } else {
      memset(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
    }
    touchClearCurrentDetections();
  }

  for (uint8_t c = 0; c < 6; c++) {
    for (uint8_t r = 0; r < 6; r++) {
      switch (r) {
        case 0: writePin(D6, matrix_is_on(r, c)); break;
        case 1: writePin(B4, matrix_is_on(r, c)); break;
        case 2: writePin(B5, matrix_is_on(r, c)); break;
        case 3: writePin(B6, matrix_is_on(r, c)); break;
        case 4: writePin(C6, matrix_is_on(r, c)); break;
        case 5: writePin(C7, matrix_is_on(r, c)); break;
      }

      switch (c) {
        case 0: writePin(F5, !matrix_is_on(r, c)); break;
        case 1: writePin(F4, !matrix_is_on(r, c)); break;
        case 2: writePin(F1, !matrix_is_on(r, c)); break;
        case 3: writePin(F0, !matrix_is_on(r, c)); break;
        case 4: writePin(F6, !matrix_is_on(r, c)); break;
        case 5: writePin(F7, !matrix_is_on(r, c)); break;
      }
    }
  }

  if (vibrate == VIBRATE_LENGTH) {
    writePinHigh(E6);
    writePinHigh(D7);
    vibrate--;
  } else if (vibrate > 0) {
    vibrate--;
  } else if (vibrate == 0) {
    writePinLow(D7);
    writePinLow(E6);
  }

  matrix_scan_quantum();

  return 1;

}
