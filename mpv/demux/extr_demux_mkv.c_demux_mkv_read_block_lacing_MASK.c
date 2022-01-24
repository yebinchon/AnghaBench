#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct stream {int /*<<< orphan*/  eof; } ;
struct block_info {int /*<<< orphan*/  num_laces; TYPE_1__** laces; } ;
typedef  int int64_t ;
struct TYPE_4__ {int size; scalar_t__ data; } ;
typedef  TYPE_1__ AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LZO_INPUT_PADDING ; 
 int EBML_INT_INVALID ; 
 scalar_t__ EBML_UINT_INVALID ; 
 int MAX_NUM_LACES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 scalar_t__ FUNC3 (struct stream*) ; 
 int FUNC4 (struct stream*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct stream*,scalar_t__,int) ; 
 int FUNC7 (struct stream*) ; 
 scalar_t__ FUNC8 (struct stream*) ; 

__attribute__((used)) static int FUNC9(struct block_info *block, int type,
                                       struct stream *s, uint64_t endpos)
{
    int laces;
    uint32_t lace_size[MAX_NUM_LACES];


    if (type == 0) {           /* no lacing */
        laces = 1;
        lace_size[0] = endpos - FUNC8(s);
    } else {
        laces = FUNC7(s);
        if (laces < 0 || FUNC8(s) > endpos)
            goto error;
        laces += 1;

        switch (type) {
        case 1: {              /* xiph lacing */
            uint32_t total = 0;
            for (int i = 0; i < laces - 1; i++) {
                lace_size[i] = 0;
                uint8_t t;
                do {
                    t = FUNC7(s);
                    if (s->eof || FUNC8(s) >= endpos)
                        goto error;
                    lace_size[i] += t;
                } while (t == 0xFF);
                total += lace_size[i];
            }
            uint32_t rest_length = endpos - FUNC8(s);
            lace_size[laces - 1] = rest_length - total;
            break;
        }

        case 2: {              /* fixed-size lacing */
            uint32_t full_length = endpos - FUNC8(s);
            for (int i = 0; i < laces; i++)
                lace_size[i] = full_length / laces;
            break;
        }

        case 3: {              /* EBML lacing */
            uint64_t num = FUNC3(s);
            if (num == EBML_UINT_INVALID || FUNC8(s) >= endpos)
                goto error;

            uint32_t total = lace_size[0] = num;
            for (int i = 1; i < laces - 1; i++) {
                int64_t snum = FUNC4(s);
                if (snum == EBML_INT_INVALID || FUNC8(s) >= endpos)
                    goto error;
                lace_size[i] = lace_size[i - 1] + snum;
                total += lace_size[i];
            }
            uint32_t rest_length = endpos - FUNC8(s);
            lace_size[laces - 1] = rest_length - total;
            break;
        }

        default:
            goto error;
        }
    }

    for (int i = 0; i < laces; i++) {
        uint32_t size = lace_size[i];
        if (FUNC8(s) + size > endpos || size > (1 << 30))
            goto error;
        int pad = FUNC0(AV_INPUT_BUFFER_PADDING_SIZE, AV_LZO_INPUT_PADDING);
        AVBufferRef *buf = FUNC1(size + pad);
        if (!buf)
            goto error;
        buf->size = size;
        if (FUNC6(s, buf->data, buf->size) != buf->size) {
            FUNC2(&buf);
            goto error;
        }
        FUNC5(buf->data + buf->size, 0, pad);
        block->laces[block->num_laces++] = buf;
    }

    if (FUNC8(s) != endpos)
        goto error;

    return 0;

 error:
    return 1;
}