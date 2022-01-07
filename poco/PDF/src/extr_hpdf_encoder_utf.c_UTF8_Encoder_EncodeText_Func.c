
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UNICODE ;
typedef int HPDF_UINT ;
typedef int HPDF_ParseText_Rec ;
typedef int HPDF_Encoder ;
typedef scalar_t__ HPDF_ByteType ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_BYTE_TYPE_TRIAL ;
 scalar_t__ HPDF_Encoder_ByteType (int ,int *) ;
 int HPDF_Encoder_SetParseText (int ,int *,int const*,int) ;
 int HPDF_Encoder_ToUnicode (int ,int ) ;
 int HPDF_MemCpy (int *,int const*,int) ;
 int HPDF_UInt16Swap (int *) ;
 char* malloc (int) ;

__attribute__((used)) static char *
UTF8_Encoder_EncodeText_Func (HPDF_Encoder encoder,
          const char *text,
          HPDF_UINT len,
          HPDF_UINT *length)
{
    char *result = malloc(len * 2);
    char *c = result;
    HPDF_ParseText_Rec parse_state;
    HPDF_UINT i;

    HPDF_Encoder_SetParseText (encoder, &parse_state,
          (const HPDF_BYTE *)text, len);

    for (i = 0; i < len; i++) {
 HPDF_UNICODE tmp_unicode;
 HPDF_ByteType btype = HPDF_Encoder_ByteType (encoder, &parse_state);

 if (btype != HPDF_BYTE_TYPE_TRIAL) {
     tmp_unicode = HPDF_Encoder_ToUnicode (encoder, 0);

     HPDF_UInt16Swap (&tmp_unicode);
     HPDF_MemCpy ((HPDF_BYTE *)c, (const HPDF_BYTE*)&tmp_unicode, 2);
     c += 2;
        }
    }

    *length = c - result;

    return result;
}
