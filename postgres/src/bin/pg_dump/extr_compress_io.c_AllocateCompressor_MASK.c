#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WriteFunc ;
struct TYPE_4__ {scalar_t__ comprAlg; int /*<<< orphan*/  writeF; } ;
typedef  TYPE_1__ CompressorState ;
typedef  scalar_t__ CompressionAlgorithm ;

/* Variables and functions */
 scalar_t__ COMPR_ALG_LIBZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 

CompressorState *
FUNC4(int compression, WriteFunc writeF)
{
	CompressorState *cs;
	CompressionAlgorithm alg;
	int			level;

	FUNC1(compression, &alg, &level);

#ifndef HAVE_LIBZ
	if (alg == COMPR_ALG_LIBZ)
		FUNC2("not built with zlib support");
#endif

	cs = (CompressorState *) FUNC3(sizeof(CompressorState));
	cs->writeF = writeF;
	cs->comprAlg = alg;

	/*
	 * Perform compression algorithm specific initialization.
	 */
#ifdef HAVE_LIBZ
	if (alg == COMPR_ALG_LIBZ)
		InitCompressorZlib(cs, level);
#endif

	return cs;
}