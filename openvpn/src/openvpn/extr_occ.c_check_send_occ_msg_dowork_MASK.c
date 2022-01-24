#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int occ_op; int /*<<< orphan*/  buf; int /*<<< orphan*/  frame; int /*<<< orphan*/  occ_mtu_load_size; int /*<<< orphan*/  max_send_size_local; int /*<<< orphan*/  max_recv_size_local; int /*<<< orphan*/  options_string_local; TYPE_1__* buffers; } ;
struct context {TYPE_2__ c2; } ;
struct TYPE_3__ {int /*<<< orphan*/  aux_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  D_PACKET_CONTENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
#define  OCC_EXIT 134 
#define  OCC_MTU_LOAD 133 
#define  OCC_MTU_LOAD_REQUEST 132 
#define  OCC_MTU_REPLY 131 
#define  OCC_MTU_REQUEST 130 
#define  OCC_REPLY 129 
#define  OCC_REQUEST 128 
 scalar_t__ OCC_STRING_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct context*,int) ; 
 int FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  occ_magic ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(struct context *c)
{
    bool doit = false;

    c->c2.buf = c->c2.buffers->aux_buf;
    FUNC0(FUNC6(&c->c2.buf, FUNC4(&c->c2.frame)));
    FUNC0(FUNC7(&c->c2.buf, FUNC5(&c->c2.frame)));
    FUNC0(FUNC8(&c->c2.buf, occ_magic, OCC_STRING_SIZE));

    switch (c->c2.occ_op)
    {
        case OCC_REQUEST:
            if (!FUNC10(&c->c2.buf, OCC_REQUEST))
            {
                break;
            }
            FUNC11(D_PACKET_CONTENT, "SENT OCC_REQUEST");
            doit = true;
            break;

        case OCC_REPLY:
            if (!c->c2.options_string_local)
            {
                break;
            }
            if (!FUNC10(&c->c2.buf, OCC_REPLY))
            {
                break;
            }
            if (!FUNC8(&c->c2.buf, c->c2.options_string_local,
                           FUNC15(c->c2.options_string_local) + 1))
            {
                break;
            }
            FUNC11(D_PACKET_CONTENT, "SENT OCC_REPLY");
            doit = true;
            break;

        case OCC_MTU_REQUEST:
            if (!FUNC10(&c->c2.buf, OCC_MTU_REQUEST))
            {
                break;
            }
            FUNC11(D_PACKET_CONTENT, "SENT OCC_MTU_REQUEST");
            doit = true;
            break;

        case OCC_MTU_REPLY:
            if (!FUNC10(&c->c2.buf, OCC_MTU_REPLY))
            {
                break;
            }
            if (!FUNC9(&c->c2.buf, c->c2.max_recv_size_local))
            {
                break;
            }
            if (!FUNC9(&c->c2.buf, c->c2.max_send_size_local))
            {
                break;
            }
            FUNC11(D_PACKET_CONTENT, "SENT OCC_MTU_REPLY");
            doit = true;
            break;

        case OCC_MTU_LOAD_REQUEST:
            if (!FUNC10(&c->c2.buf, OCC_MTU_LOAD_REQUEST))
            {
                break;
            }
            if (!FUNC9(&c->c2.buf, c->c2.occ_mtu_load_size))
            {
                break;
            }
            FUNC11(D_PACKET_CONTENT, "SENT OCC_MTU_LOAD_REQUEST");
            doit = true;
            break;

        case OCC_MTU_LOAD:
        {
            int need_to_add;

            if (!FUNC10(&c->c2.buf, OCC_MTU_LOAD))
            {
                break;
            }
            need_to_add = FUNC14(c->c2.occ_mtu_load_size, FUNC2(&c->c2.frame))
                          - OCC_STRING_SIZE
                          - sizeof(uint8_t)
                          - FUNC3(&c->c2.frame);

            while (need_to_add > 0)
            {
                /*
                 * Fill the load test packet with pseudo-random bytes.
                 */
                if (!FUNC10(&c->c2.buf, FUNC13() & 0xFF))
                {
                    break;
                }
                --need_to_add;
            }
            FUNC11(D_PACKET_CONTENT, "SENT OCC_MTU_LOAD min_int(%d-%d-%d-%d,%d) size=%d",
                 c->c2.occ_mtu_load_size,
                 OCC_STRING_SIZE,
                 (int) sizeof(uint8_t),
                 FUNC3(&c->c2.frame),
                 FUNC5(&c->c2.frame),
                 FUNC1(&c->c2.buf));
            doit = true;
        }
        break;

        case OCC_EXIT:
            if (!FUNC10(&c->c2.buf, OCC_EXIT))
            {
                break;
            }
            FUNC11(D_PACKET_CONTENT, "SENT OCC_EXIT");
            doit = true;
            break;
    }

    if (doit)
    {
        /*
         * We will treat the packet like any other outgoing packet,
         * compress, encrypt, sign, etc.
         */
        FUNC12(c, true);
    }

    c->c2.occ_op = -1;
}