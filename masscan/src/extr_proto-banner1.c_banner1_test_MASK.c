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
struct PreprocessedInfo {int dummy; } ;
struct PcapFile {int dummy; } ;
typedef  int /*<<< orphan*/  px ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct PcapFile*) ; 
 unsigned int FUNC2 (struct PcapFile*) ; 
 struct PcapFile* FUNC3 (char const*) ; 
 int FUNC4 (struct PcapFile*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned char*,int) ; 
 unsigned int FUNC5 (unsigned char*,unsigned int,unsigned int,struct PreprocessedInfo*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6(const char *filename)
{
    struct PcapFile *cap;
    unsigned link_type;

    cap = FUNC3(filename);
    if (cap == NULL) {
        FUNC0(stderr, "%s: can't open capture file\n", filename);
        return;
    }

    link_type = FUNC2(cap);

    for (;;) {
        int packets_read;
        unsigned secs;
        unsigned usecs;
        unsigned origlength;
        unsigned length;
        unsigned char px[65536];
        struct PreprocessedInfo parsed;
        unsigned x;


        packets_read = FUNC4(
                    cap,    /* capture dump file */
                    &secs, &usecs,
                    &origlength, &length,
                    px, sizeof(px));
        if (packets_read == 0)
            break;


        x = FUNC5(px, length, link_type, &parsed);
        if (x == 0)
            continue;

    }

    FUNC1(cap);
}