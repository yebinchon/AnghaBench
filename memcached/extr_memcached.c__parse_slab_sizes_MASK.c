#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int chunk_size; int slab_chunk_size_max; } ;

/* Variables and functions */
 int CHUNK_ALIGN_BYTES ; 
 int MAX_NUMBER_OF_SLAB_CLASSES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,char**) ; 

__attribute__((used)) static bool FUNC4(char *s, uint32_t *slab_sizes) {
    char *b = NULL;
    uint32_t size = 0;
    int i = 0;
    uint32_t last_size = 0;

    if (FUNC2(s) < 1)
        return false;

    for (char *p = FUNC3(s, "-", &b);
         p != NULL;
         p = FUNC3(NULL, "-", &b)) {
        if (!FUNC1(p, &size) || size < settings.chunk_size
             || size > settings.slab_chunk_size_max) {
            FUNC0(stderr, "slab size %u is out of valid range\n", size);
            return false;
        }
        if (last_size >= size) {
            FUNC0(stderr, "slab size %u cannot be lower than or equal to a previous class size\n", size);
            return false;
        }
        if (size <= last_size + CHUNK_ALIGN_BYTES) {
            FUNC0(stderr, "slab size %u must be at least %d bytes larger than previous class\n",
                    size, CHUNK_ALIGN_BYTES);
            return false;
        }
        slab_sizes[i++] = size;
        last_size = size;
        if (i >= MAX_NUMBER_OF_SLAB_CLASSES-1) {
            FUNC0(stderr, "too many slab classes specified\n");
            return false;
        }
    }

    slab_sizes[i] = 0;
    return true;
}