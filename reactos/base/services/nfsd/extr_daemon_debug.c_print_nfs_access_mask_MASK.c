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

/* Variables and functions */
 int ACE4_ADD_FILE ; 
 int ACE4_ADD_SUBDIRECTORY ; 
 int ACE4_APPEND_DATA ; 
 int ACE4_DELETE ; 
 int ACE4_DELETE_CHILD ; 
 int ACE4_EXECUTE ; 
 int ACE4_LIST_DIRECTORY ; 
 int ACE4_READ_ACL ; 
 int ACE4_READ_ATTRIBUTES ; 
 int ACE4_READ_DATA ; 
 int ACE4_READ_NAMED_ATTRS ; 
 int ACE4_SYNCHRONIZE ; 
 int ACE4_WRITE_ACL ; 
 int ACE4_WRITE_ATTRIBUTES ; 
 int ACE4_WRITE_DATA ; 
 int ACE4_WRITE_NAMED_ATTRS ; 
 int ACE4_WRITE_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 

void FUNC1(int on, int m)
{
    if (!on) return;
    FUNC0(1, "--> print_nfs_access_mask: %x\n", m);
    if (m & ACE4_READ_DATA)
        FUNC0(1, "\tACE4_READ_DATA\n");
    if (m & ACE4_LIST_DIRECTORY)
        FUNC0(1, "\tACE4_LIST_DIRECTORY\n");
    if (m & ACE4_WRITE_DATA)
        FUNC0(1, "\tACE4_WRITE_DATA\n");
    if (m & ACE4_ADD_FILE)
        FUNC0(1, "\tACE4_ADD_FILE\n");
    if (m & ACE4_APPEND_DATA)
        FUNC0(1, "\tACE4_APPEND_DATA\n");
    if (m & ACE4_ADD_SUBDIRECTORY)
        FUNC0(1, "\tACE4_ADD_SUBDIRECTORY\n");
    if (m & ACE4_READ_NAMED_ATTRS)
        FUNC0(1, "\tACE4_READ_NAMED_ATTRS\n");
    if (m & ACE4_WRITE_NAMED_ATTRS)
        FUNC0(1, "\tACE4_WRITE_NAMED_ATTRS\n");
    if (m & ACE4_EXECUTE)
        FUNC0(1, "\tACE4_EXECUTE\n");
    if (m & ACE4_DELETE_CHILD)
        FUNC0(1, "\tACE4_DELETE_CHILD\n");
    if (m & ACE4_READ_ATTRIBUTES)
        FUNC0(1, "\tACE4_READ_ATTRIBUTES\n");
    if (m & ACE4_WRITE_ATTRIBUTES)
        FUNC0(1, "\tACE4_WRITE_ATTRIBUTES\n");
    if (m & ACE4_DELETE)
        FUNC0(1, "\tACE4_DELETE\n");
    if (m & ACE4_READ_ACL)
        FUNC0(1, "\tACE4_READ_ACL\n");
    if (m & ACE4_WRITE_ACL)
        FUNC0(1, "\tACE4_WRITE_ACL\n");
    if (m & ACE4_WRITE_OWNER)
        FUNC0(1, "\tACE4_WRITE_OWNER\n");
    if (m & ACE4_SYNCHRONIZE)
        FUNC0(1, "\tACE4_SYNCHRONIZE\n");
}