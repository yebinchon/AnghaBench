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
struct mp_chmap {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_chmap*,unsigned char*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct mp_chmap *channels, unsigned char *data,
                             int size)
{
    // Skip FLAC header.
    if (size < 4)
        return;
    data += 4;
    size -= 4;
    // Parse FLAC blocks...
    while (size >= 4) {
        unsigned btype = data[0] & 0x7F;
        unsigned bsize = FUNC0(data + 1);
        data += 4;
        size -= 4;
        if (bsize > size)
            return;
        if (btype == 4) // VORBIS_COMMENT
            FUNC1(channels, data, bsize);
        data += bsize;
        size -= bsize;
    }
}