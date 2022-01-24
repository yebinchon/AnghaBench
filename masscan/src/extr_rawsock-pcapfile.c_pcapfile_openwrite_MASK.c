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
struct PcapFile {unsigned int linktype; int /*<<< orphan*/  byte_order; int /*<<< orphan*/ * fp; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CAPFILE_LITTLEENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct PcapFile*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

struct PcapFile *FUNC9(const char *capfilename, unsigned linktype)
{
    char buf[] =
            "\xd4\xc3\xb2\xa1\x02\x00\x04\x00"
            "\x00\x00\x00\x00\x00\x00\x00\x00"
            "\xff\xff\x00\x00\x69\x00\x00\x00";
    FILE *fp;

    buf[20] = (char)(linktype>>0);
    buf[21] = (char)(linktype>>8);


    fp = FUNC2(capfilename, "wb");
    if (fp == NULL) {
        FUNC3(stderr, "Could not open capture file\n");
        FUNC7(capfilename);
        return 0;
    }


    if (FUNC4(buf, 1, 24, fp) != 24) {
        FUNC3(stderr, "Could not write capture file header\n");
        FUNC7(capfilename);
        FUNC1(fp);
        return 0;
    }

    {
        struct PcapFile *capfile = 0;
        capfile = (struct PcapFile*)FUNC5(sizeof(*capfile));
        if (capfile == NULL)
            FUNC0(1);
        FUNC6(capfile,0,sizeof(*capfile));

        FUNC8(capfile->filename, sizeof(capfile->filename),
                 "%s", capfilename);

        capfile->fp = fp;
        capfile->byte_order = CAPFILE_LITTLEENDIAN;
        capfile->linktype = linktype;
        return capfile;
    }

}