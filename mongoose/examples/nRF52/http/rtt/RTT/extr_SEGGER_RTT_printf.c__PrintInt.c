
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ReturnValue; } ;
typedef TYPE_1__ SEGGER_RTT_PRINTF_DESC ;


 unsigned int FORMAT_FLAG_LEFT_JUSTIFY ;
 unsigned int FORMAT_FLAG_PAD_ZERO ;
 unsigned int FORMAT_FLAG_PRINT_SIGN ;
 int _PrintUnsigned (TYPE_1__*,int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int _StoreChar (TYPE_1__*,char) ;

__attribute__((used)) static void _PrintInt(SEGGER_RTT_PRINTF_DESC * pBufferDesc, int v, unsigned Base, unsigned NumDigits, unsigned FieldWidth, unsigned FormatFlags) {
  unsigned Width;
  unsigned Number;

  Number = (v < 0) ? -v : v;




  Width = 1;
  while (Number >= Base) {
    Number = (Number / Base);
    Width++;
  }
  if (NumDigits > Width) {
    Width = NumDigits;
  }
  if ((FieldWidth > 0) && ((v < 0) || ((FormatFlags & FORMAT_FLAG_PRINT_SIGN) == FORMAT_FLAG_PRINT_SIGN))) {
    FieldWidth--;
  }




  if ((((FormatFlags & FORMAT_FLAG_PAD_ZERO) == 0) || (NumDigits != 0)) && ((FormatFlags & FORMAT_FLAG_LEFT_JUSTIFY) == 0)) {
    if (FieldWidth != 0) {
      while ((FieldWidth != 0) && (Width < FieldWidth--)) {
        _StoreChar(pBufferDesc, ' ');
        if (pBufferDesc->ReturnValue < 0) {
          return;
        }
      }
    }
  }



  if (v < 0) {
    v = -v;
    _StoreChar(pBufferDesc, '-');
    if (pBufferDesc->ReturnValue < 0) {
      return;
    }
  } else if ((FormatFlags & FORMAT_FLAG_PRINT_SIGN) == FORMAT_FLAG_PRINT_SIGN) {
    _StoreChar(pBufferDesc, '+');
    if (pBufferDesc->ReturnValue < 0) {
      return;
    }
  }



  if (((FormatFlags & FORMAT_FLAG_PAD_ZERO) == FORMAT_FLAG_PAD_ZERO) && ((FormatFlags & FORMAT_FLAG_LEFT_JUSTIFY) == 0) && (NumDigits == 0)) {
    if (FieldWidth != 0) {
      while ((FieldWidth != 0) && (Width < FieldWidth--)) {
        _StoreChar(pBufferDesc, '0');
        if (pBufferDesc->ReturnValue < 0) {
          return;
        }
      }
    }
  }




  _PrintUnsigned(pBufferDesc, v, Base, NumDigits, FieldWidth, FormatFlags);
}
