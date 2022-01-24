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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/ * uint32_t ;
struct nn_chunk {int dummy; } ;

/* Variables and functions */
 scalar_t__ NN_CHUNK_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nn_chunk *FUNC2 (void *p)
{
    uint32_t off;

    FUNC0 (FUNC1 ((uint8_t*) p - sizeof (uint32_t)) == NN_CHUNK_TAG);
    off = FUNC1 ((uint8_t*) p - 2 * sizeof (uint32_t));

    return (struct  nn_chunk*) ((uint8_t*) p - 2 *sizeof (uint32_t) - off -
        sizeof (struct nn_chunk));
}