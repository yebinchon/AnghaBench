
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int LPCSTR ;
typedef int LONG ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_SUCCESS ;
 int TRACE (char*,int,int) ;
 void** b64 ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static LONG encodeBase64A(const BYTE *in_buf, int in_len, LPCSTR sep,
 char* out_buf, DWORD *out_len)
{
    int div, i;
    const BYTE *d = in_buf;
    int bytes = (in_len*8 + 5)/6, pad_bytes = (bytes % 4) ? 4 - (bytes % 4) : 0;
    DWORD needed;
    LPSTR ptr;

    TRACE("bytes is %d, pad bytes is %d\n", bytes, pad_bytes);
    needed = bytes + pad_bytes;
    needed += (needed / 64 + (needed % 64 ? 1 : 0)) * strlen(sep);
    needed++;

    if (needed > *out_len)
    {
        *out_len = needed;
        return ERROR_INSUFFICIENT_BUFFER;
    }
    else
        *out_len = needed;


    div = in_len / 3;

    ptr = out_buf;
    i = 0;
    while (div > 0)
    {
        if (i && i % 64 == 0)
        {
            strcpy(ptr, sep);
            ptr += strlen(sep);
        }

        *ptr++ = b64[ ( d[0] >> 2) & 0x3f ];


        *ptr++ = b64[ ((d[0] << 4) & 0x30) | (d[1] >> 4 & 0x0f)];


        *ptr++ = b64[ ((d[1] << 2) & 0x3c) | (d[2] >> 6 & 0x03)];

        *ptr++ = b64[ d[2] & 0x3f];
        i += 4;
        d += 3;
        div--;
    }

    switch(pad_bytes)
    {
        case 1:

            *ptr++ = b64[ ( d[0] >> 2) & 0x3f ];


            *ptr++ = b64[ ((d[0] << 4) & 0x30) | (d[1] >> 4 & 0x0f)];


            *ptr++ = b64[ ((d[1] << 2) & 0x3c) ];

            *ptr++ = '=';
            break;
        case 2:

            *ptr++ = b64[ ( d[0] >> 2) & 0x3f ];


            *ptr++ = b64[ ((d[0] << 4) & 0x30)];

            *ptr++ = '=';

            *ptr++ = '=';
            break;
    }
    strcpy(ptr, sep);

    return ERROR_SUCCESS;
}
