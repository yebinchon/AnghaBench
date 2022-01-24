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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {char const* extension; scalar_t__ hash; int /*<<< orphan*/  contenttype; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_APPLICATION_OCTET_STREAM ; 
 TYPE_1__* mime_types ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline uint8_t FUNC3(const char *filename) {
    // info("checking filename '%s'", filename);

    static int initialized = 0;
    int i;

    if(FUNC2(!initialized)) {
        for (i = 0; mime_types[i].extension; i++)
            mime_types[i].hash = FUNC0(mime_types[i].extension);

        initialized = 1;
    }

    const char *s = filename, *last_dot = NULL;

    // find the last dot
    while(*s) {
        if(FUNC2(*s == '.')) last_dot = s;
        s++;
    }

    if(FUNC2(!last_dot || !*last_dot || !last_dot[1])) {
        // info("no extension for filename '%s'", filename);
        return CT_APPLICATION_OCTET_STREAM;
    }
    last_dot++;

    // info("extension for filename '%s' is '%s'", filename, last_dot);

    uint32_t hash = FUNC0(last_dot);
    for(i = 0; mime_types[i].extension ; i++) {
        if(FUNC2(hash == mime_types[i].hash && !FUNC1(last_dot, mime_types[i].extension))) {
            // info("matched extension for filename '%s': '%s'", filename, last_dot);
            return mime_types[i].contenttype;
        }
    }

    // info("not matched extension for filename '%s': '%s'", filename, last_dot);
    return CT_APPLICATION_OCTET_STREAM;
}