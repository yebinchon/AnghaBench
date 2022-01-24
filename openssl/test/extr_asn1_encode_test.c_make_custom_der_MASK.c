#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t_true ;
struct TYPE_3__ {size_t nbytes1; size_t nbytes2; char* bytes2; unsigned char const* bytes1; } ;
typedef  TYPE_1__ TEST_CUSTOM_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char* FUNC1 (size_t) ; 
 int V_ASN1_BOOLEAN ; 
 void* V_ASN1_INTEGER ; 
 int FUNC2 (size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static size_t FUNC4(const TEST_CUSTOM_DATA *custom_data,
                              unsigned char **encoding, int explicit_default)
{
    size_t firstbytes, secondbytes = 0, secondbytesinner = 0, seqbytes;
    const unsigned char t_true[] = { V_ASN1_BOOLEAN, 0x01, 0xff };
    unsigned char *p = NULL;
    size_t i;

    /*
     * The first item is just an INTEGER tag, INTEGER length and INTEGER content
     */
    firstbytes =
        1 + FUNC2(custom_data->nbytes1, NULL)
        + custom_data->nbytes1;

    for (i = custom_data->nbytes2; i > 0; i--) {
        if (custom_data->bytes2[i - 1] != '\0')
            break;
    }
    if (explicit_default || i > 0) {
        /*
         * The second item is an explicit tag, content length, INTEGER tag,
         * INTEGER length, INTEGER bytes
         */
        secondbytesinner =
            1 + FUNC2(custom_data->nbytes2, NULL)
            + custom_data->nbytes2;
        secondbytes =
            1 + FUNC2(secondbytesinner, NULL) + secondbytesinner;
    }

    /*
     * The whole sequence is the sequence tag, content length, BOOLEAN true
     * (copied from t_true), the first (firstbytes) and second (secondbytes)
     * items
     */
    seqbytes =
        1 + FUNC2(sizeof(t_true) + firstbytes + secondbytes, NULL)
        + sizeof(t_true) + firstbytes + secondbytes;

    *encoding = p = FUNC1(seqbytes);
    if (*encoding == NULL)
        return 0;

    /* Sequence tag */
    *p++ = 0x30;
    FUNC2(sizeof(t_true) + firstbytes + secondbytes, &p);

    /* ASN1_BOOLEAN TRUE */
    FUNC3(p, t_true, sizeof(t_true)); /* Marks decoding success */
    p += sizeof(t_true);

    /* First INTEGER item (non-optional) */
    *p++ = V_ASN1_INTEGER;
    FUNC2(custom_data->nbytes1, &p);
    FUNC3(p, custom_data->bytes1, custom_data->nbytes1);
    p += custom_data->nbytes1;

    if (secondbytes > 0) {
        /* Second INTEGER item (optional) */
        /* Start with the explicit optional tag */
        *p++ = 0xa0;
        FUNC2(secondbytesinner, &p);
        *p++ = V_ASN1_INTEGER;
        FUNC2(custom_data->nbytes2, &p);
        FUNC3(p, custom_data->bytes2, custom_data->nbytes2);
        p += custom_data->nbytes2;
    }

    FUNC0(seqbytes == (size_t)(p - *encoding));

    return seqbytes;
}