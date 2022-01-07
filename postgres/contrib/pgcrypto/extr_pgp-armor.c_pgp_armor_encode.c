
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_7__ {char* data; int len; } ;
typedef TYPE_1__* StringInfo ;


 int FATAL ;
 char* _base64 ;
 int appendStringInfo (TYPE_1__*,char*,char*,char*) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,int ) ;
 int armor_footer ;
 int armor_header ;
 unsigned int crc24 (int const*,unsigned int) ;
 int elog (int ,char*) ;
 int enlargeStringInfo (TYPE_1__*,int) ;
 unsigned int pg_base64_enc_len (unsigned int) ;
 int pg_base64_encode (int const*,unsigned int,int *) ;

void
pgp_armor_encode(const uint8 *src, unsigned len, StringInfo dst,
     int num_headers, char **keys, char **values)
{
 int n;
 int res;
 unsigned b64len;
 unsigned crc = crc24(src, len);

 appendStringInfoString(dst, armor_header);

 for (n = 0; n < num_headers; n++)
  appendStringInfo(dst, "%s: %s\n", keys[n], values[n]);
 appendStringInfoChar(dst, '\n');


 b64len = pg_base64_enc_len(len);
 enlargeStringInfo(dst, (int) b64len);

 res = pg_base64_encode(src, len, (uint8 *) dst->data + dst->len);
 if (res > b64len)
  elog(FATAL, "overflow - encode estimate too small");
 dst->len += res;

 if (*(dst->data + dst->len - 1) != '\n')
  appendStringInfoChar(dst, '\n');

 appendStringInfoChar(dst, '=');
 appendStringInfoChar(dst, _base64[(crc >> 18) & 0x3f]);
 appendStringInfoChar(dst, _base64[(crc >> 12) & 0x3f]);
 appendStringInfoChar(dst, _base64[(crc >> 6) & 0x3f]);
 appendStringInfoChar(dst, _base64[crc & 0x3f]);

 appendStringInfoString(dst, armor_footer);
}
