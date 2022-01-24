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
typedef  int D3D_BLOB_PART ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_BLOB_ALL_SIGNATURE_BLOB ; 
 int /*<<< orphan*/  D3D_BLOB_DEBUG_INFO ; 
 int /*<<< orphan*/  D3D_BLOB_INPUT_AND_OUTPUT_SIGNATURE_BLOB ; 
 int /*<<< orphan*/  D3D_BLOB_INPUT_SIGNATURE_BLOB ; 
 int /*<<< orphan*/  D3D_BLOB_LEGACY_SHADER ; 
 int /*<<< orphan*/  D3D_BLOB_OUTPUT_SIGNATURE_BLOB ; 
 int /*<<< orphan*/  D3D_BLOB_PATCH_CONSTANT_SIGNATURE_BLOB ; 
 int /*<<< orphan*/  D3D_BLOB_TEST_ALTERNATE_SHADER ; 
 int /*<<< orphan*/  D3D_BLOB_TEST_COMPILE_DETAILS ; 
 int /*<<< orphan*/  D3D_BLOB_TEST_COMPILE_PERF ; 
 int /*<<< orphan*/  D3D_BLOB_XNA_PREPASS_SHADER ; 
 int /*<<< orphan*/  D3D_BLOB_XNA_SHADER ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(D3D_BLOB_PART part)
{
    switch(part)
    {
        FUNC1(D3D_BLOB_INPUT_SIGNATURE_BLOB);
        FUNC1(D3D_BLOB_OUTPUT_SIGNATURE_BLOB);
        FUNC1(D3D_BLOB_INPUT_AND_OUTPUT_SIGNATURE_BLOB);
        FUNC1(D3D_BLOB_PATCH_CONSTANT_SIGNATURE_BLOB);
        FUNC1(D3D_BLOB_ALL_SIGNATURE_BLOB);
        FUNC1(D3D_BLOB_DEBUG_INFO);
        FUNC1(D3D_BLOB_LEGACY_SHADER);
        FUNC1(D3D_BLOB_XNA_PREPASS_SHADER);
        FUNC1(D3D_BLOB_XNA_SHADER);
        FUNC1(D3D_BLOB_TEST_ALTERNATE_SHADER);
        FUNC1(D3D_BLOB_TEST_COMPILE_DETAILS);
        FUNC1(D3D_BLOB_TEST_COMPILE_PERF);
        default:
            FUNC0("Unrecognized D3D_BLOB_PART %#x\n", part);
            return "unrecognized";
    }
}