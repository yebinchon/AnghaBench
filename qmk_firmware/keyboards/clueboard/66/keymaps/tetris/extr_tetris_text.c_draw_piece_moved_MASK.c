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
 int /*<<< orphan*/  FUNC0 (char,int,int,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  temp_piece ; 

__attribute__((used)) static void FUNC2(char c, int x, int y, char piece[7][7], int oldxadd, int oldyadd) {
  FUNC1(piece, temp_piece, oldxadd, oldyadd);
  FUNC0(c, x, y, temp_piece, piece);
}