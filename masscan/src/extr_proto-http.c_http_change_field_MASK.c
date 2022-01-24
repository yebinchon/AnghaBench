#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

unsigned
FUNC6(unsigned char **inout_header, unsigned header_length,
                    const char *field_name,
                    const unsigned char *field_value, unsigned field_value_len)
{
    unsigned char *hdr1 = *inout_header;
    unsigned char *hdr2;
    unsigned i;
    unsigned is_newline_seen = 0;
    unsigned field_name_len = (unsigned)FUNC5(field_name);

    hdr2 = FUNC0(header_length + field_value_len + 1 + 2);

    FUNC3(hdr2, hdr1, header_length);

    /* Remove the previous header and remember the location in the header
     * where it was located */
    for (i=0; i<header_length; i++) {
        if (hdr2[i] == '\r')
            continue;
        if (hdr2[i] == '\n') {
            if (is_newline_seen) {
                /* We've reached the end of header without seing
                 * the field. Therefore, create space right here
                 * for it. */
                while (hdr2[i-1] == '\r')
                    i--;
                break;
            } else if (FUNC2(&hdr2[i+1], field_name, field_name_len) == 0) {
                unsigned j;
                i++; /* skip previous newline */
                for (j=i; j<header_length && hdr2[j] != '\n'; j++)
                    ;
                if (j < header_length && hdr2[j] == '\n')
                    j++;
                FUNC4(    &hdr2[i],
                            &hdr2[j],
                            header_length - j);
                header_length -= (j - i);
                hdr2[header_length] = '\0';
                break;
            }
        }
    }

    /* Insert the new header at this location */
    FUNC4(    &hdr2[i + field_name_len + field_value_len + 1 + 2],
                &hdr2[i],
                header_length - i);
    FUNC3( &hdr2[i],
            field_name,
            field_name_len);
    FUNC3( &hdr2[i + field_name_len],
            " ",
            1);
    FUNC3( &hdr2[i + field_name_len + 1],
            field_value,
            field_value_len);
    FUNC3( &hdr2[i + field_name_len + 1 + field_value_len],
            "\r\n",
            2);

    header_length += field_name_len + 1 + field_value_len + 2;

    FUNC1(hdr1);
    *inout_header = hdr2;
    return header_length;
}