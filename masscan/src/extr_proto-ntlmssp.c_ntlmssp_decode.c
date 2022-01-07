
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NtlmsspDecode {size_t length; size_t offset; unsigned char* buf; } ;
struct BannerOutput {int dummy; } ;
typedef int buf ;


 int AUTO_LEN ;
 unsigned char* MALLOC (size_t) ;
 int PROTO_SMB ;
 int append_unicode_string (struct BannerOutput*,int ,char*,unsigned char const*,size_t) ;
 int banout_append (struct BannerOutput*,int ,char*,int ) ;
 int free (unsigned char*) ;
 scalar_t__ memcmp (char*,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int sprintf_s (char*,int,char*,unsigned char const,unsigned char const,unsigned char const,unsigned char const) ;

void
ntlmssp_decode(struct NtlmsspDecode *x,
              const unsigned char *px, size_t length,
              struct BannerOutput *banout)
{
    unsigned message_type;
    unsigned name_offset;
    unsigned name_length;
    unsigned info_offset;
    unsigned info_length;

    unsigned i;

    if (length > x->length - x->offset)
        length = x->length - x->offset;



    if (x->offset == 0 && x->length > length) {
        x->buf = MALLOC(x->length);
        memcpy(x->buf, px, length);
        x->offset = (unsigned)length;
        return;
    } else if (x->offset) {
        memcpy(x->buf + x->offset, px, length);
        x->offset += (unsigned)length;
        if (x->offset < x->length)
            return;


        px = x->buf;
        length = x->length;
    }

    if (length < 56)
        goto end;




    if (memcmp("NTLMSSP", px, 8) != 0)
        goto end;



    message_type = px[8] | px[9]<<8 | px[10]<<16 | px[11]<<24;
    if (message_type != 2)
        goto end;



    name_length = px[12] | px[13]<<8;
    name_offset = px[16] | px[17]<<8 | px[18]<<16 | px[19]<<24;
    if (name_length && name_length + name_offset < length) {
        append_unicode_string(banout, PROTO_SMB, "domain", px+name_offset, name_length);
    }





    info_length = px[40] | px[41]<<8;
    info_offset = px[44] | px[45]<<8 | px[46]<<16 | px[47]<<24;


    {
        char buf[64];
        sprintf_s(buf, sizeof(buf), " version=%u.%u.%u ntlm-ver=%u",
                  px[48],
                  px[49],
                  px[50] | px[51]<<8,
                  px[55]
                  );
        banout_append(banout, PROTO_SMB, buf, AUTO_LEN);
    }


    for (i=info_offset; i+4<info_offset+info_length && i+4<length; ) {
        unsigned type = px[i] | px[i+1]<<8;
        size_t len = px[i+2] | px[i+3]<<8;
        i += 4;

        if (len > info_offset + info_length - i)
            len = info_offset + info_length - i;
        if (len > length - i)
            len = length - i;

        switch (type) {
            case 0x00:
                i = info_offset + info_length;
                continue;
            case 1:
                append_unicode_string(banout, PROTO_SMB, "name", px+i, len);
                break;
            case 2:
                append_unicode_string(banout, PROTO_SMB, "domain", px+i, len);
                break;
            case 3:
                append_unicode_string(banout, PROTO_SMB, "name-dns", px+i, len);
                break;
            case 4:
                append_unicode_string(banout, PROTO_SMB, "domain-dns", px+i, len);
                break;
            case 5:
                append_unicode_string(banout, PROTO_SMB, "forest", px+i, len);
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                append_unicode_string(banout, PROTO_SMB, "target", px+i, len);
                break;
            case 10:
                break;
            default:
                break;
        }
        i += (unsigned)len;
    }





end:



    if (x->buf) {
        free(x->buf);
        x->buf = 0;
    }

}
