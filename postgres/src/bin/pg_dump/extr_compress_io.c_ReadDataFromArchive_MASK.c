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
typedef  int /*<<< orphan*/  ReadFunc ;
typedef  scalar_t__ CompressionAlgorithm ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 scalar_t__ COMPR_ALG_LIBZ ; 
 scalar_t__ COMPR_ALG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(ArchiveHandle *AH, int compression, ReadFunc readF)
{
	CompressionAlgorithm alg;

	FUNC0(compression, &alg, NULL);

	if (alg == COMPR_ALG_NONE)
		FUNC1(AH, readF);
	if (alg == COMPR_ALG_LIBZ)
	{
#ifdef HAVE_LIBZ
		ReadDataFromArchiveZlib(AH, readF);
#else
		FUNC3("not built with zlib support");
#endif
	}
}