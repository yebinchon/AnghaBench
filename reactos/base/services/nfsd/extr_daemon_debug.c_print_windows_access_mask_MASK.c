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
typedef  int ACCESS_MASK ;

/* Variables and functions */
 int ACCESS_SYSTEM_SECURITY ; 
 int DELETE ; 
 int FILE_ADD_FILE ; 
 int FILE_ADD_SUBDIRECTORY ; 
 int FILE_ALL_ACCESS ; 
 int FILE_APPEND_DATA ; 
 int FILE_CREATE_PIPE_INSTANCE ; 
 int FILE_DELETE_CHILD ; 
 int FILE_EXECUTE ; 
 int FILE_GENERIC_EXECUTE ; 
 int FILE_GENERIC_READ ; 
 int FILE_GENERIC_WRITE ; 
 int FILE_LIST_DIRECTORY ; 
 int FILE_READ_ATTRIBUTES ; 
 int FILE_READ_DATA ; 
 int FILE_READ_EA ; 
 int FILE_TRAVERSE ; 
 int FILE_WRITE_ATTRIBUTES ; 
 int FILE_WRITE_DATA ; 
 int FILE_WRITE_EA ; 
 int GENERIC_ALL ; 
 int GENERIC_EXECUTE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int MAXIMUM_ALLOWED ; 
 int READ_CONTROL ; 
 int SPECIFIC_RIGHTS_ALL ; 
 int STANDARD_RIGHTS_ALL ; 
 int STANDARD_RIGHTS_REQUIRED ; 
 int SYNCHRONIZE ; 
 int WRITE_DAC ; 
 int WRITE_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 

void FUNC1(int on, ACCESS_MASK m)
{
    if (!on) return;
    FUNC0(1, "--> print_windows_access_mask: %x\n", m);
    if (m & GENERIC_READ)
        FUNC0(1, "\tGENERIC_READ\n");
    if (m & GENERIC_WRITE)
        FUNC0(1, "\tGENERIC_WRITE\n");
    if (m & GENERIC_EXECUTE)
        FUNC0(1, "\tGENERIC_EXECUTE\n");
    if (m & GENERIC_ALL)
        FUNC0(1, "\tGENERIC_ALL\n");
    if (m & MAXIMUM_ALLOWED)
        FUNC0(1, "\tMAXIMUM_ALLOWED\n");
    if (m & ACCESS_SYSTEM_SECURITY)
        FUNC0(1, "\tACCESS_SYSTEM_SECURITY\n");
    if ((m & SPECIFIC_RIGHTS_ALL) == SPECIFIC_RIGHTS_ALL)
        FUNC0(1, "\tSPECIFIC_RIGHTS_ALL\n");
    if ((m & STANDARD_RIGHTS_ALL) == STANDARD_RIGHTS_ALL)
        FUNC0(1, "\tSTANDARD_RIGHTS_ALL\n");
    if ((m & STANDARD_RIGHTS_REQUIRED) == STANDARD_RIGHTS_REQUIRED)
        FUNC0(1, "\tSTANDARD_RIGHTS_REQUIRED\n");
    if (m & SYNCHRONIZE)
        FUNC0(1, "\tSYNCHRONIZE\n");
    if (m & WRITE_OWNER)
        FUNC0(1, "\tWRITE_OWNER\n");
    if (m & WRITE_DAC)
        FUNC0(1, "\tWRITE_DAC\n");
    if (m & READ_CONTROL)
        FUNC0(1, "\tREAD_CONTROL\n");
    if (m & DELETE)
        FUNC0(1, "\tDELETE\n");
    if (m & FILE_READ_DATA)
        FUNC0(1, "\tFILE_READ_DATA\n");
    if (m & FILE_LIST_DIRECTORY)
        FUNC0(1, "\tFILE_LIST_DIRECTORY\n");
    if (m & FILE_WRITE_DATA)
        FUNC0(1, "\tFILE_WRITE_DATA\n");
    if (m & FILE_ADD_FILE)
        FUNC0(1, "\tFILE_ADD_FILE\n");
    if (m & FILE_APPEND_DATA)
        FUNC0(1, "\tFILE_APPEND_DATA\n");
    if (m & FILE_ADD_SUBDIRECTORY)
        FUNC0(1, "\tFILE_ADD_SUBDIRECTORY\n");
    if (m & FILE_CREATE_PIPE_INSTANCE)
        FUNC0(1, "\tFILE_CREATE_PIPE_INSTANCE\n");
    if (m & FILE_READ_EA)
        FUNC0(1, "\tFILE_READ_EA\n");
    if (m & FILE_WRITE_EA)
        FUNC0(1, "\tFILE_WRITE_EA\n");
    if (m & FILE_EXECUTE)
        FUNC0(1, "\tFILE_EXECUTE\n");
    if (m & FILE_TRAVERSE)
        FUNC0(1, "\tFILE_TRAVERSE\n");
    if (m & FILE_DELETE_CHILD)
        FUNC0(1, "\tFILE_DELETE_CHILD\n");
    if (m & FILE_READ_ATTRIBUTES)
        FUNC0(1, "\tFILE_READ_ATTRIBUTES\n");
    if (m & FILE_WRITE_ATTRIBUTES)
        FUNC0(1, "\tFILE_WRITE_ATTRIBUTES\n");
    if ((m & FILE_ALL_ACCESS) == FILE_ALL_ACCESS)
        FUNC0(1, "\tFILE_ALL_ACCESS\n");
    if ((m & FILE_GENERIC_READ) == FILE_GENERIC_READ)
        FUNC0(1, "\tFILE_GENERIC_READ\n");
    if ((m & FILE_GENERIC_WRITE) == FILE_GENERIC_WRITE)
        FUNC0(1, "\tFILE_GENERIC_WRITE\n");
    if ((m & FILE_GENERIC_EXECUTE) == FILE_GENERIC_EXECUTE)
        FUNC0(1, "\tFILE_GENERIC_EXECUTE\n");
}