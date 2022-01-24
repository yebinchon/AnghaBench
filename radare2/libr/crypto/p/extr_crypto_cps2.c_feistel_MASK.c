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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  int const ut16 ;
struct optimised_sbox {int dummy; } ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const,int const,int const,int const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct optimised_sbox const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline ut16 FUNC3(ut16 val, const int *bitsA, const int *bitsB,
		const struct optimised_sbox* boxes1, const struct optimised_sbox* boxes2,
		const struct optimised_sbox* boxes3, const struct optimised_sbox* boxes4,
		ut32 key1, ut32 key2, ut32 key3, ut32 key4)
{
	ut8 l = FUNC1(val, bitsB[7],bitsB[6],bitsB[5],bitsB[4],bitsB[3],bitsB[2],bitsB[1],bitsB[0]);
	ut8 r = FUNC1(val, bitsA[7],bitsA[6],bitsA[5],bitsA[4],bitsA[3],bitsA[2],bitsA[1],bitsA[0]);

	l ^= FUNC2(r, boxes1, key1);
	r ^= FUNC2(l, boxes2, key2);
	l ^= FUNC2(r, boxes3, key3);
	r ^= FUNC2(l, boxes4, key4);

	return
		(FUNC0(l, 0) << bitsA[0]) |
		(FUNC0(l, 1) << bitsA[1]) |
		(FUNC0(l, 2) << bitsA[2]) |
		(FUNC0(l, 3) << bitsA[3]) |
		(FUNC0(l, 4) << bitsA[4]) |
		(FUNC0(l, 5) << bitsA[5]) |
		(FUNC0(l, 6) << bitsA[6]) |
		(FUNC0(l, 7) << bitsA[7]) |
		(FUNC0(r, 0) << bitsB[0]) |
		(FUNC0(r, 1) << bitsB[1]) |
		(FUNC0(r, 2) << bitsB[2]) |
		(FUNC0(r, 3) << bitsB[3]) |
		(FUNC0(r, 4) << bitsB[4]) |
		(FUNC0(r, 5) << bitsB[5]) |
		(FUNC0(r, 6) << bitsB[6]) |
		(FUNC0(r, 7) << bitsB[7]);
}