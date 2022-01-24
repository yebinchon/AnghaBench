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
struct gc_arena {int dummy; } ;
typedef  int /*<<< orphan*/  openvpn_x509_cert_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int M_ERRNO ; 
 int M_NONFATAL ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 char* FUNC3 (char const*,char*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC6(openvpn_x509_cert_t *peercert, const char *tmp_dir, struct gc_arena *gc)
{
    FILE *peercert_file;
    const char *peercert_filename = "";

    /* create tmp file to store peer cert */
    if (!tmp_dir
        || !(peercert_filename = FUNC3(tmp_dir, "pcf", gc)))
    {
        FUNC2(M_NONFATAL, "Failed to create peer cert file");
        return NULL;
    }

    /* write peer-cert in tmp-file */
    peercert_file = FUNC1(peercert_filename, "w+");
    if (!peercert_file)
    {
        FUNC2(M_NONFATAL|M_ERRNO, "Failed to open temporary file: %s",
            peercert_filename);
        return NULL;
    }

    if (SUCCESS != FUNC5(peercert_file, peercert))
    {
        FUNC2(M_NONFATAL, "Error writing PEM file containing certificate");
        (void) FUNC4(peercert_filename);
        peercert_filename = NULL;
    }

    FUNC0(peercert_file);
    return peercert_filename;
}