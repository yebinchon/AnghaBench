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
struct PcapFile {unsigned int byte_order; int /*<<< orphan*/  linktype; int /*<<< orphan*/ * fp; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  newname ;
typedef  int /*<<< orphan*/  linkspec ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int CAPFILE_BIGENDIAN ; 
 unsigned int CAPFILE_LITTLEENDIAN ; 
 scalar_t__ ENOENT ; 
 unsigned int FUNC0 (unsigned int,unsigned char*) ; 
 unsigned int FUNC1 (unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct PcapFile*,int /*<<< orphan*/ ,int) ; 
 struct PcapFile* FUNC11 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 size_t FUNC13 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char const* FUNC14 (char const*,char) ; 
 int FUNC15 (char const*) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 

struct PcapFile *FUNC17(const char *capfilename, unsigned linktype)
{
    struct PcapFile *capfile;
    unsigned char buf[24];
    unsigned byte_order;
    unsigned file_linktype;
    FILE *fp;



    /* open the file for appending and reading */
    fp = FUNC4(capfilename, "ab+");
    if (fp == NULL && errno == ENOENT) {
        return FUNC11(capfilename, linktype);
    }
    if (fp == NULL) {
        FUNC5(stderr, "Could not open capture file to append frame\n");
        FUNC12(capfilename);
        return FUNC17(capfilename, linktype);
    }

    /* Read in the header to discover link type and byte order */
    if (FUNC6(buf, 1, 24, fp) != 24) {
        FUNC5(stderr, "Error reading capture file header\n");
        FUNC12(capfilename);
        FUNC3(fp);
        return FUNC17(capfilename, linktype);
    }

    /* Seek to the end of the file, where we will start writing
     * frames from now on. Note that we aren't checking to see if the frames
     * are corrupt at the end (which happens when the program crashes),
     * so we may end up writing these frames in a way that cannot be read. */
    if (FUNC7(fp, 0, SEEK_END) != 0) {
        FUNC5(stderr, "Could not seek to end of capture file\n");
        FUNC12(capfilename);
        FUNC3(fp);
        return 0;
    }


    /* Find out the byte order */
    switch (buf[0]<<24 | buf[1]<<16 | buf[2]<<8 | buf[3]) {
    case 0xa1b2c3d4:   byte_order = CAPFILE_BIGENDIAN; break;
    case 0xd4c3b2a1:   byte_order = CAPFILE_LITTLEENDIAN; break;
    default:
        FUNC5(stderr, "%s: unknown byte-order in cap file\n", capfilename);
        FUNC3(fp);
        return FUNC17(capfilename, linktype);
    }


    /* Version */
    {
        unsigned major = FUNC0(byte_order, buf+4);
        unsigned minor = FUNC0(byte_order, buf+6);

        if (major != 2 || minor != 4)
            FUNC5(stderr, "%s: unknown version %u.%u\n", capfilename, major, minor);
    }

    /* Protocol */
    file_linktype = FUNC1(byte_order, buf+20);
    if (linktype != file_linktype) {
        /* oops, the link types do not agree. Since we want a program to generate
         * dumps while simultaneously processing multiple inputs, we are going to
         * create a kludge. Instead of writing to the originally specified file,
         * we are going to create a new file with the linktype added to it's name */
        char linkspec[32];
        size_t linkspec_length;
        char newname[sizeof(capfile->filename)];
        size_t i;

        FUNC3(fp);

        linkspec_length = FUNC13(linkspec, sizeof(linkspec), "-linktype%d", linktype);

        if (FUNC16(capfilename, linkspec) || FUNC15(capfilename) + linkspec_length + 1 > sizeof(newname)) {
            /* Oops, we have a problem, it looks like the filename already
             * has the previous linktype in its name for some reason. At this
             * unlikely point, we just give up */
            FUNC5(stderr, "Giving up on appending %u-type frames onto a %u-type file\n",
                    linktype, file_linktype);
            return 0;
        }

        if (FUNC14(capfilename, '.'))
            i = FUNC14(capfilename, '.')-capfilename;
        else
            i = FUNC15(capfilename);

        FUNC9(newname, capfilename, i);
        FUNC9(newname+i, linkspec, linkspec_length);
        FUNC9(newname+i+linkspec_length, capfilename+i, FUNC15(capfilename+i)+1);

        return FUNC17(newname, linktype);
    }

    /* Now that everything has checked out, create a file structure and
     * return it */
    {

        capfile = (struct PcapFile*)FUNC8(sizeof(*capfile));
        if (capfile == NULL)
            FUNC2(1);
        FUNC10(capfile,0,sizeof(*capfile));
        capfile->byte_order = byte_order;
        FUNC13(capfile->filename, sizeof(capfile->filename),
                 "%s", capfilename);
        capfile->fp = fp;
        capfile->byte_order = byte_order;
        capfile->linktype = linktype;
    }

    return capfile;
}