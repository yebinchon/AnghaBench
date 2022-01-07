
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** encPtr; } ;
typedef TYPE_1__ INIT_ENCODING ;
typedef int ENCODING ;


 size_t INIT_ENC_INDEX (TYPE_1__ const*) ;
 int ISO_8859_1_ENC ;



 size_t UTF_8_ENC ;
 int XML_CONTENT_STATE ;
 int XML_TOK_BOM ;
 int XML_TOK_NONE ;
 int XML_TOK_PARTIAL ;
 int XmlTok (int const*,int,char const*,char const*,char const**) ;

__attribute__((used)) static int
initScan(const ENCODING *const *encodingTable, const INIT_ENCODING *enc,
         int state, const char *ptr, const char *end, const char **nextTokPtr) {
  const ENCODING **encPtr;

  if (ptr >= end)
    return XML_TOK_NONE;
  encPtr = enc->encPtr;
  if (ptr + 1 == end) {



    if (state != XML_CONTENT_STATE)
      return XML_TOK_PARTIAL;



    switch (INIT_ENC_INDEX(enc)) {
    case 128:
    case 129:
    case 130:
      return XML_TOK_PARTIAL;
    }
    switch ((unsigned char)*ptr) {
    case 0xFE:
    case 0xFF:
    case 0xEF:
      if (INIT_ENC_INDEX(enc) == ISO_8859_1_ENC && state == XML_CONTENT_STATE)
        break;

    case 0x00:
    case 0x3C:
      return XML_TOK_PARTIAL;
    }
  } else {
    switch (((unsigned char)ptr[0] << 8) | (unsigned char)ptr[1]) {
    case 0xFEFF:
      if (INIT_ENC_INDEX(enc) == ISO_8859_1_ENC && state == XML_CONTENT_STATE)
        break;
      *nextTokPtr = ptr + 2;
      *encPtr = encodingTable[130];
      return XML_TOK_BOM;

    case 0x3C00:
      if ((INIT_ENC_INDEX(enc) == 130
           || INIT_ENC_INDEX(enc) == 128)
          && state == XML_CONTENT_STATE)
        break;
      *encPtr = encodingTable[129];
      return XmlTok(*encPtr, state, ptr, end, nextTokPtr);
    case 0xFFFE:
      if (INIT_ENC_INDEX(enc) == ISO_8859_1_ENC && state == XML_CONTENT_STATE)
        break;
      *nextTokPtr = ptr + 2;
      *encPtr = encodingTable[129];
      return XML_TOK_BOM;
    case 0xEFBB:







      if (state == XML_CONTENT_STATE) {
        int e = INIT_ENC_INDEX(enc);
        if (e == ISO_8859_1_ENC || e == 130 || e == 129
            || e == 128)
          break;
      }
      if (ptr + 2 == end)
        return XML_TOK_PARTIAL;
      if ((unsigned char)ptr[2] == 0xBF) {
        *nextTokPtr = ptr + 3;
        *encPtr = encodingTable[UTF_8_ENC];
        return XML_TOK_BOM;
      }
      break;
    default:
      if (ptr[0] == '\0') {






        if (state == XML_CONTENT_STATE && INIT_ENC_INDEX(enc) == 129)
          break;
        *encPtr = encodingTable[130];
        return XmlTok(*encPtr, state, ptr, end, nextTokPtr);
      } else if (ptr[1] == '\0') {
        if (state == XML_CONTENT_STATE)
          break;
        *encPtr = encodingTable[129];
        return XmlTok(*encPtr, state, ptr, end, nextTokPtr);
      }
      break;
    }
  }
  *encPtr = encodingTable[INIT_ENC_INDEX(enc)];
  return XmlTok(*encPtr, state, ptr, end, nextTokPtr);
}
