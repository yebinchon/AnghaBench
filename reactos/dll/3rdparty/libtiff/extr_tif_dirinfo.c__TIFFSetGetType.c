
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFSetGetFieldType ;
typedef int TIFFDataType ;
 int TIFF_SETGET_ASCII ;
 int TIFF_SETGET_C0_ASCII ;
 int TIFF_SETGET_C0_DOUBLE ;
 int TIFF_SETGET_C0_FLOAT ;
 int TIFF_SETGET_C0_IFD8 ;
 int TIFF_SETGET_C0_SINT16 ;
 int TIFF_SETGET_C0_SINT32 ;
 int TIFF_SETGET_C0_SINT64 ;
 int TIFF_SETGET_C0_SINT8 ;
 int TIFF_SETGET_C0_UINT16 ;
 int TIFF_SETGET_C0_UINT32 ;
 int TIFF_SETGET_C0_UINT64 ;
 int TIFF_SETGET_C0_UINT8 ;
 int TIFF_SETGET_C16_ASCII ;
 int TIFF_SETGET_C16_DOUBLE ;
 int TIFF_SETGET_C16_FLOAT ;
 int TIFF_SETGET_C16_IFD8 ;
 int TIFF_SETGET_C16_SINT16 ;
 int TIFF_SETGET_C16_SINT32 ;
 int TIFF_SETGET_C16_SINT64 ;
 int TIFF_SETGET_C16_SINT8 ;
 int TIFF_SETGET_C16_UINT16 ;
 int TIFF_SETGET_C16_UINT32 ;
 int TIFF_SETGET_C16_UINT64 ;
 int TIFF_SETGET_C16_UINT8 ;
 int TIFF_SETGET_C32_ASCII ;
 int TIFF_SETGET_C32_DOUBLE ;
 int TIFF_SETGET_C32_FLOAT ;
 int TIFF_SETGET_C32_IFD8 ;
 int TIFF_SETGET_C32_SINT16 ;
 int TIFF_SETGET_C32_SINT32 ;
 int TIFF_SETGET_C32_SINT64 ;
 int TIFF_SETGET_C32_SINT8 ;
 int TIFF_SETGET_C32_UINT16 ;
 int TIFF_SETGET_C32_UINT32 ;
 int TIFF_SETGET_C32_UINT64 ;
 int TIFF_SETGET_C32_UINT8 ;
 int TIFF_SETGET_DOUBLE ;
 int TIFF_SETGET_FLOAT ;
 int TIFF_SETGET_IFD8 ;
 int TIFF_SETGET_SINT16 ;
 int TIFF_SETGET_SINT32 ;
 int TIFF_SETGET_SINT64 ;
 int TIFF_SETGET_SINT8 ;
 int TIFF_SETGET_UINT16 ;
 int TIFF_SETGET_UINT32 ;
 int TIFF_SETGET_UINT64 ;
 int TIFF_SETGET_UINT8 ;
 int TIFF_SETGET_UNDEFINED ;






 short TIFF_VARIABLE ;
 short TIFF_VARIABLE2 ;

__attribute__((used)) static TIFFSetGetFieldType
_TIFFSetGetType(TIFFDataType type, short count, unsigned char passcount)
{
 if (type == 143 && count == TIFF_VARIABLE && passcount == 0)
  return TIFF_SETGET_ASCII;

 else if (count == 1 && passcount == 0) {
  switch (type)
  {
   case 142:
   case 128:
    return TIFF_SETGET_UINT8;
   case 143:
    return TIFF_SETGET_ASCII;
   case 133:
    return TIFF_SETGET_UINT16;
   case 137:
    return TIFF_SETGET_UINT32;
   case 135:
   case 130:
   case 140:
    return TIFF_SETGET_FLOAT;
   case 134:
    return TIFF_SETGET_SINT8;
   case 129:
    return TIFF_SETGET_SINT16;
   case 132:
    return TIFF_SETGET_SINT32;
   case 141:
    return TIFF_SETGET_DOUBLE;
   case 139:
   case 138:
    return TIFF_SETGET_IFD8;
   case 136:
    return TIFF_SETGET_UINT64;
   case 131:
    return TIFF_SETGET_SINT64;
   default:
    return TIFF_SETGET_UNDEFINED;
  }
 }

 else if (count >= 1 && passcount == 0) {
  switch (type)
  {
   case 142:
   case 128:
    return TIFF_SETGET_C0_UINT8;
   case 143:
    return TIFF_SETGET_C0_ASCII;
   case 133:
    return TIFF_SETGET_C0_UINT16;
   case 137:
    return TIFF_SETGET_C0_UINT32;
   case 135:
   case 130:
   case 140:
    return TIFF_SETGET_C0_FLOAT;
   case 134:
    return TIFF_SETGET_C0_SINT8;
   case 129:
    return TIFF_SETGET_C0_SINT16;
   case 132:
    return TIFF_SETGET_C0_SINT32;
   case 141:
    return TIFF_SETGET_C0_DOUBLE;
   case 139:
   case 138:
    return TIFF_SETGET_C0_IFD8;
   case 136:
    return TIFF_SETGET_C0_UINT64;
   case 131:
    return TIFF_SETGET_C0_SINT64;
   default:
    return TIFF_SETGET_UNDEFINED;
  }
 }

 else if (count == TIFF_VARIABLE && passcount == 1) {
  switch (type)
  {
   case 142:
   case 128:
    return TIFF_SETGET_C16_UINT8;
   case 143:
    return TIFF_SETGET_C16_ASCII;
   case 133:
    return TIFF_SETGET_C16_UINT16;
   case 137:
    return TIFF_SETGET_C16_UINT32;
   case 135:
   case 130:
   case 140:
    return TIFF_SETGET_C16_FLOAT;
   case 134:
    return TIFF_SETGET_C16_SINT8;
   case 129:
    return TIFF_SETGET_C16_SINT16;
   case 132:
    return TIFF_SETGET_C16_SINT32;
   case 141:
    return TIFF_SETGET_C16_DOUBLE;
   case 139:
   case 138:
    return TIFF_SETGET_C16_IFD8;
   case 136:
    return TIFF_SETGET_C16_UINT64;
   case 131:
    return TIFF_SETGET_C16_SINT64;
   default:
    return TIFF_SETGET_UNDEFINED;
  }
 }

 else if (count == TIFF_VARIABLE2 && passcount == 1) {
  switch (type)
  {
   case 142:
   case 128:
    return TIFF_SETGET_C32_UINT8;
   case 143:
    return TIFF_SETGET_C32_ASCII;
   case 133:
    return TIFF_SETGET_C32_UINT16;
   case 137:
    return TIFF_SETGET_C32_UINT32;
   case 135:
   case 130:
   case 140:
    return TIFF_SETGET_C32_FLOAT;
   case 134:
    return TIFF_SETGET_C32_SINT8;
   case 129:
    return TIFF_SETGET_C32_SINT16;
   case 132:
    return TIFF_SETGET_C32_SINT32;
   case 141:
    return TIFF_SETGET_C32_DOUBLE;
   case 139:
   case 138:
    return TIFF_SETGET_C32_IFD8;
   case 136:
    return TIFF_SETGET_C32_UINT64;
   case 131:
    return TIFF_SETGET_C32_SINT64;
   default:
    return TIFF_SETGET_UNDEFINED;
  }
 }

 return TIFF_SETGET_UNDEFINED;
}
