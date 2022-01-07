
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int B5 ;
 int B6 ;
 int C6 ;
 int C7 ;
 int F0 ;
 int F1 ;
 int writePin (int ,int) ;
 int writePinHigh (int ) ;

__attribute__((used)) static void select_col(uint8_t col) {
    if (col < 16) {
        uint8_t c = col + 8;

        writePin(B6, c & 0b10000);
        writePin(C6, c & 0b01000);
        writePin(C7, c & 0b00100);
        writePin(F1, c & 0b00010);
        writePin(F0, c & 0b00001);
    } else {
        writePinHigh(B5);
    }
}
