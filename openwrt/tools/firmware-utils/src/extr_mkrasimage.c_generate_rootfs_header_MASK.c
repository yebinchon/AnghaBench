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
struct file_info {int /*<<< orphan*/  size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  ROOTFS_HEADER_LEN ; 
 size_t VERSION_STRING_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*) ; 
 unsigned int FUNC7 (unsigned char const*,int /*<<< orphan*/ ) ; 

char *FUNC8(struct file_info filesystem, char *version)
{
    size_t version_string_length;
    unsigned int chksm, size;
    char *rootfs_header;
    size_t ptr = 0;

    rootfs_header = FUNC3(ROOTFS_HEADER_LEN);
    if (!rootfs_header) {
        FUNC0("Couldn't allocate memory for rootfs header!");
        FUNC1(EXIT_FAILURE);
    }

    /* Prepare padding for firmware-version string here */
    FUNC5(rootfs_header, 0xff, ROOTFS_HEADER_LEN);

    chksm = FUNC7((const unsigned char *)filesystem.data, filesystem.size);
    size = FUNC2(filesystem.size);

    /* 4 bytes:  checksum of the rootfs image */
    FUNC4(rootfs_header + ptr, &chksm, 4);
    ptr += 4;

    /* 4 bytes:  length of the contained rootfs image file (big endian) */
    FUNC4(rootfs_header + ptr, &size, 4);
    ptr += 4;

    /* 32 bytes:  Firmware Version string (NUL terminated, 0xff padded) */
    version_string_length = FUNC6(version) <= VERSION_STRING_LEN ? FUNC6(version) : VERSION_STRING_LEN;
    FUNC4(rootfs_header + ptr, version, version_string_length);
    ptr += version_string_length;
    /* Add null-terminator */
    rootfs_header[ptr] = 0x0;

    return rootfs_header;
}