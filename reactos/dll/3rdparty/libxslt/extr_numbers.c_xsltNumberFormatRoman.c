
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltNumberDataPtr ;
typedef int xmlBufferPtr ;
struct TYPE_3__ {int groupingCharacterLen; int groupingCharacter; int digitsPerGroup; } ;


 int xmlBufferCCat (int ,char*) ;
 int xsltNumberFormatDecimal (int ,double,int ,int,int ,int ,int ) ;

__attribute__((used)) static void
xsltNumberFormatRoman(xsltNumberDataPtr data,
        xmlBufferPtr buffer,
        double number,
        int is_upper)
{




    if (number < 1.0 || number > 5000.0) {
        xsltNumberFormatDecimal(buffer, number, '0', 1,
                                data->digitsPerGroup,
                                data->groupingCharacter,
                                data->groupingCharacterLen);
        return;
    }




    while (number >= 1000.0) {
 xmlBufferCCat(buffer, (is_upper) ? "M" : "m");
 number -= 1000.0;
    }
    if (number >= 900.0) {
 xmlBufferCCat(buffer, (is_upper) ? "CM" : "cm");
 number -= 900.0;
    }
    while (number >= 500.0) {
 xmlBufferCCat(buffer, (is_upper) ? "D" : "d");
 number -= 500.0;
    }
    if (number >= 400.0) {
 xmlBufferCCat(buffer, (is_upper) ? "CD" : "cd");
 number -= 400.0;
    }
    while (number >= 100.0) {
 xmlBufferCCat(buffer, (is_upper) ? "C" : "c");
 number -= 100.0;
    }
    if (number >= 90.0) {
 xmlBufferCCat(buffer, (is_upper) ? "XC" : "xc");
 number -= 90.0;
    }
    while (number >= 50.0) {
 xmlBufferCCat(buffer, (is_upper) ? "L" : "l");
 number -= 50.0;
    }
    if (number >= 40.0) {
 xmlBufferCCat(buffer, (is_upper) ? "XL" : "xl");
 number -= 40.0;
    }
    while (number >= 10.0) {
 xmlBufferCCat(buffer, (is_upper) ? "X" : "x");
 number -= 10.0;
    }
    if (number >= 9.0) {
 xmlBufferCCat(buffer, (is_upper) ? "IX" : "ix");
 number -= 9.0;
    }
    while (number >= 5.0) {
 xmlBufferCCat(buffer, (is_upper) ? "V" : "v");
 number -= 5.0;
    }
    if (number >= 4.0) {
 xmlBufferCCat(buffer, (is_upper) ? "IV" : "iv");
 number -= 4.0;
    }
    while (number >= 1.0) {
 xmlBufferCCat(buffer, (is_upper) ? "I" : "i");
 number--;
    }
}
