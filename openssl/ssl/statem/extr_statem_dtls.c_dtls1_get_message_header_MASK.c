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
struct hm_header_st {int /*<<< orphan*/  frag_len; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  seq; int /*<<< orphan*/  msg_len; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hm_header_st*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 

void FUNC3(unsigned char *data, struct hm_header_st *msg_hdr)
{
    FUNC0(msg_hdr, 0, sizeof(*msg_hdr));
    msg_hdr->type = *(data++);
    FUNC1(data, msg_hdr->msg_len);

    FUNC2(data, msg_hdr->seq);
    FUNC1(data, msg_hdr->frag_off);
    FUNC1(data, msg_hdr->frag_len);
}