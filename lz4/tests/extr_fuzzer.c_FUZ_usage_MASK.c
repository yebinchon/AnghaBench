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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUZ_COMPRESSIBILITY_DEFAULT ; 
 int /*<<< orphan*/  NB_ATTEMPTS ; 

__attribute__((used)) static int FUNC1(const char* programName)
{
    FUNC0( "Usage :\n");
    FUNC0( "      %s [args]\n", programName);
    FUNC0( "\n");
    FUNC0( "Arguments :\n");
    FUNC0( " -i#    : Nb of tests (default:%i) \n", NB_ATTEMPTS);
    FUNC0( " -T#    : Duration of tests, in seconds (default: use Nb of tests) \n");
    FUNC0( " -s#    : Select seed (default:prompt user)\n");
    FUNC0( " -t#    : Select starting test number (default:0)\n");
    FUNC0( " -P#    : Select compressibility in %% (default:%i%%)\n", FUZ_COMPRESSIBILITY_DEFAULT);
    FUNC0( " -v     : verbose\n");
    FUNC0( " -p     : pause at the end\n");
    FUNC0( " -h     : display help and exit\n");
    return 0;
}