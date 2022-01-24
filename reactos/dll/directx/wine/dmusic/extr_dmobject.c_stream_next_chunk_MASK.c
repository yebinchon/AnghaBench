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
struct chunk_entry {scalar_t__ id; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct chunk_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct chunk_entry*) ; 

HRESULT FUNC3(IStream *stream, struct chunk_entry *chunk)
{
    HRESULT hr;

    if (chunk->id) {
        hr = FUNC2(stream, chunk);
        if (FUNC0(hr))
            return hr;
    }

    return FUNC1(stream, chunk);
}