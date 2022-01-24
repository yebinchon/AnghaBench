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
typedef  int /*<<< orphan*/  litDistribTable ;
typedef  unsigned long long U64 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 unsigned long long RDG_BLOCKSIZE ; 
 int RDG_DICTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,double,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC5(unsigned long long size, double matchProba, double litProba, unsigned seed)
{
    BYTE buff[RDG_DICTSIZE + RDG_BLOCKSIZE];
    U64 total = 0;
    size_t genBlockSize = RDG_BLOCKSIZE;
    litDistribTable lt;

    /* init */
    if (litProba==0.0) litProba = matchProba / 4.5;
    FUNC0(lt, litProba);
    FUNC2(stdout);

    /* Generate dict */
    FUNC1(buff, RDG_DICTSIZE, 0, matchProba, lt, &seed);

    /* Generate compressible data */
    while (total < size) {
        FUNC1(buff, RDG_DICTSIZE+RDG_BLOCKSIZE, RDG_DICTSIZE, matchProba, lt, &seed);
        if (size-total < RDG_BLOCKSIZE) genBlockSize = (size_t)(size-total);
        total += genBlockSize;
        FUNC3(buff, 1, genBlockSize, stdout);  /* should check potential write error */
        /* update dict */
        FUNC4(buff, buff + RDG_BLOCKSIZE, RDG_DICTSIZE);
    }
}