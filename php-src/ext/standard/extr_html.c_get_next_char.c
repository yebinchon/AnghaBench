
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum entity_charset { ____Placeholder_entity_charset } entity_charset ;


 int CHECK_LEN (size_t,int) ;
 int MB_FAILURE (size_t,int) ;
 int SUCCESS ;
 int assert (int) ;






 int gb2312_lead (unsigned char) ;
 int gb2312_trail (unsigned char) ;
 int sjis_lead (unsigned char) ;
 int sjis_trail (unsigned char) ;
 int utf8_lead (unsigned char const) ;
 int utf8_trail (unsigned char const) ;

__attribute__((used)) static inline unsigned int get_next_char(
  enum entity_charset charset,
  const unsigned char *str,
  size_t str_len,
  size_t *cursor,
  int *status)
{
 size_t pos = *cursor;
 unsigned int this_char = 0;

 *status = SUCCESS;
 assert(pos <= str_len);

 if (!CHECK_LEN(pos, 1))
  MB_FAILURE(pos, 1);

 switch (charset) {
 case 128:
  {




   unsigned char c;
   c = str[pos];
   if (c < 0x80) {
    this_char = c;
    pos++;
   } else if (c < 0xc2) {
    MB_FAILURE(pos, 1);
   } else if (c < 0xe0) {
    if (!CHECK_LEN(pos, 2))
     MB_FAILURE(pos, 1);

    if (!utf8_trail(str[pos + 1])) {
     MB_FAILURE(pos, utf8_lead(str[pos + 1]) ? 1 : 2);
    }
    this_char = ((c & 0x1f) << 6) | (str[pos + 1] & 0x3f);
    if (this_char < 0x80) {
     MB_FAILURE(pos, 2);
    }
    pos += 2;
   } else if (c < 0xf0) {
    size_t avail = str_len - pos;

    if (avail < 3 ||
      !utf8_trail(str[pos + 1]) || !utf8_trail(str[pos + 2])) {
     if (avail < 2 || utf8_lead(str[pos + 1]))
      MB_FAILURE(pos, 1);
     else if (avail < 3 || utf8_lead(str[pos + 2]))
      MB_FAILURE(pos, 2);
     else
      MB_FAILURE(pos, 3);
    }

    this_char = ((c & 0x0f) << 12) | ((str[pos + 1] & 0x3f) << 6) | (str[pos + 2] & 0x3f);
    if (this_char < 0x800) {
     MB_FAILURE(pos, 3);
    } else if (this_char >= 0xd800 && this_char <= 0xdfff) {
     MB_FAILURE(pos, 3);
    }
    pos += 3;
   } else if (c < 0xf5) {
    size_t avail = str_len - pos;

    if (avail < 4 ||
      !utf8_trail(str[pos + 1]) || !utf8_trail(str[pos + 2]) ||
      !utf8_trail(str[pos + 3])) {
     if (avail < 2 || utf8_lead(str[pos + 1]))
      MB_FAILURE(pos, 1);
     else if (avail < 3 || utf8_lead(str[pos + 2]))
      MB_FAILURE(pos, 2);
     else if (avail < 4 || utf8_lead(str[pos + 3]))
      MB_FAILURE(pos, 3);
     else
      MB_FAILURE(pos, 4);
    }

    this_char = ((c & 0x07) << 18) | ((str[pos + 1] & 0x3f) << 12) | ((str[pos + 2] & 0x3f) << 6) | (str[pos + 3] & 0x3f);
    if (this_char < 0x10000 || this_char > 0x10FFFF) {
     MB_FAILURE(pos, 4);
    }
    pos += 4;
   } else {
    MB_FAILURE(pos, 1);
   }
  }
  break;

 case 133:

  {
   unsigned char c = str[pos];
   if (c >= 0x81 && c <= 0xFE) {
    unsigned char next;
    if (!CHECK_LEN(pos, 2))
     MB_FAILURE(pos, 1);

    next = str[pos + 1];

    if ((next >= 0x40 && next <= 0x7E) ||
      (next >= 0xA1 && next <= 0xFE)) {
     this_char = (c << 8) | next;
    } else {
     MB_FAILURE(pos, 1);
    }
    pos += 2;
   } else {
    this_char = c;
    pos += 1;
   }
  }
  break;

 case 132:
  {
   unsigned char c = str[pos];
   if (c >= 0x81 && c <= 0xFE) {
    unsigned char next;
    if (!CHECK_LEN(pos, 2))
     MB_FAILURE(pos, 1);

    next = str[pos + 1];

    if ((next >= 0x40 && next <= 0x7E) ||
      (next >= 0xA1 && next <= 0xFE)) {
     this_char = (c << 8) | next;
    } else if (next != 0x80 && next != 0xFF) {
     MB_FAILURE(pos, 1);
    } else {
     MB_FAILURE(pos, 2);
    }
    pos += 2;
   } else {
    this_char = c;
    pos += 1;
   }
  }
  break;

 case 130:
  {
   unsigned char c = str[pos];
   if (c >= 0xA1 && c <= 0xFE) {
    unsigned char next;
    if (!CHECK_LEN(pos, 2))
     MB_FAILURE(pos, 1);

    next = str[pos + 1];

    if (gb2312_trail(next)) {
     this_char = (c << 8) | next;
    } else if (gb2312_lead(next)) {
     MB_FAILURE(pos, 1);
    } else {
     MB_FAILURE(pos, 2);
    }
    pos += 2;
   } else if (gb2312_lead(c)) {
    this_char = c;
    pos += 1;
   } else {
    MB_FAILURE(pos, 1);
   }
  }
  break;

 case 129:
  {
   unsigned char c = str[pos];
   if ((c >= 0x81 && c <= 0x9F) || (c >= 0xE0 && c <= 0xFC)) {
    unsigned char next;
    if (!CHECK_LEN(pos, 2))
     MB_FAILURE(pos, 1);

    next = str[pos + 1];

    if (sjis_trail(next)) {
     this_char = (c << 8) | next;
    } else if (sjis_lead(next)) {
     MB_FAILURE(pos, 1);
    } else {
     MB_FAILURE(pos, 2);
    }
    pos += 2;
   } else if (c < 0x80 || (c >= 0xA1 && c <= 0xDF)) {
    this_char = c;
    pos += 1;
   } else {
    MB_FAILURE(pos, 1);
   }
  }
  break;

 case 131:
  {
   unsigned char c = str[pos];

   if (c >= 0xA1 && c <= 0xFE) {
    unsigned next;
    if (!CHECK_LEN(pos, 2))
     MB_FAILURE(pos, 1);
    next = str[pos + 1];

    if (next >= 0xA1 && next <= 0xFE) {

     this_char = (c << 8) | next;
    } else {
     MB_FAILURE(pos, (next != 0xA0 && next != 0xFF) ? 1 : 2);
    }
    pos += 2;
   } else if (c == 0x8E) {
    unsigned next;
    if (!CHECK_LEN(pos, 2))
     MB_FAILURE(pos, 1);

    next = str[pos + 1];
    if (next >= 0xA1 && next <= 0xDF) {

     this_char = (c << 8) | next;
    } else {
     MB_FAILURE(pos, (next != 0xA0 && next != 0xFF) ? 1 : 2);
    }
    pos += 2;
   } else if (c == 0x8F) {
    size_t avail = str_len - pos;

    if (avail < 3 || !(str[pos + 1] >= 0xA1 && str[pos + 1] <= 0xFE) ||
      !(str[pos + 2] >= 0xA1 && str[pos + 2] <= 0xFE)) {
     if (avail < 2 || (str[pos + 1] != 0xA0 && str[pos + 1] != 0xFF))
      MB_FAILURE(pos, 1);
     else if (avail < 3 || (str[pos + 2] != 0xA0 && str[pos + 2] != 0xFF))
      MB_FAILURE(pos, 2);
     else
      MB_FAILURE(pos, 3);
    } else {

     this_char = (c << 16) | (str[pos + 1] << 8) | str[pos + 2];
    }
    pos += 3;
   } else if (c != 0xA0 && c != 0xFF) {

    this_char = c;
    pos += 1;
   } else {
    MB_FAILURE(pos, 1);
   }
  }
  break;
 default:

  this_char = str[pos++];
  break;
 }

 *cursor = pos;
   return this_char;
}
