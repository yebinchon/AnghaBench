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
struct BannerOutput {int dummy; } ;
struct BannerBase64 {unsigned int temp; int state; } ;

/* Variables and functions */
 char* b64 ; 
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*,unsigned int,char) ; 

void
FUNC1(struct BannerOutput *banout, unsigned proto,
                       struct BannerBase64 *base64)
{
    unsigned x = base64->temp;
    switch (base64->state) {
        case 0:
            break;
        case 1:
            FUNC0(banout, proto, b64[(x>>18)&0x3F]);
            FUNC0(banout, proto, b64[(x>>12)&0x3F]);
            FUNC0(banout, proto, '=');
            FUNC0(banout, proto, '=');
            break;
        case 2:
            FUNC0(banout, proto, b64[(x>>18)&0x3F]);
            FUNC0(banout, proto, b64[(x>>12)&0x3F]);
            FUNC0(banout, proto, b64[(x>>6)&0x3F]);
            FUNC0(banout, proto, '=');
            break;
    }
}