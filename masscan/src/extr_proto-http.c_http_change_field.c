
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* MALLOC (unsigned int) ;
 int free (unsigned char*) ;
 scalar_t__ memcasecmp (unsigned char*,char const*,unsigned int) ;
 int memcpy (unsigned char*,...) ;
 int memmove (unsigned char*,unsigned char*,unsigned int) ;
 int strlen (char const*) ;

unsigned
http_change_field(unsigned char **inout_header, unsigned header_length,
                    const char *field_name,
                    const unsigned char *field_value, unsigned field_value_len)
{
    unsigned char *hdr1 = *inout_header;
    unsigned char *hdr2;
    unsigned i;
    unsigned is_newline_seen = 0;
    unsigned field_name_len = (unsigned)strlen(field_name);

    hdr2 = MALLOC(header_length + field_value_len + 1 + 2);

    memcpy(hdr2, hdr1, header_length);



    for (i=0; i<header_length; i++) {
        if (hdr2[i] == '\r')
            continue;
        if (hdr2[i] == '\n') {
            if (is_newline_seen) {



                while (hdr2[i-1] == '\r')
                    i--;
                break;
            } else if (memcasecmp(&hdr2[i+1], field_name, field_name_len) == 0) {
                unsigned j;
                i++;
                for (j=i; j<header_length && hdr2[j] != '\n'; j++)
                    ;
                if (j < header_length && hdr2[j] == '\n')
                    j++;
                memmove( &hdr2[i],
                            &hdr2[j],
                            header_length - j);
                header_length -= (j - i);
                hdr2[header_length] = '\0';
                break;
            }
        }
    }


    memmove( &hdr2[i + field_name_len + field_value_len + 1 + 2],
                &hdr2[i],
                header_length - i);
    memcpy( &hdr2[i],
            field_name,
            field_name_len);
    memcpy( &hdr2[i + field_name_len],
            " ",
            1);
    memcpy( &hdr2[i + field_name_len + 1],
            field_value,
            field_value_len);
    memcpy( &hdr2[i + field_name_len + 1 + field_value_len],
            "\r\n",
            2);

    header_length += field_name_len + 1 + field_value_len + 2;

    free(hdr1);
    *inout_header = hdr2;
    return header_length;
}
