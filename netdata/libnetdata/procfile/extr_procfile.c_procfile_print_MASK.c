#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* lines; TYPE_1__* words; } ;
typedef  TYPE_4__ procfile ;
struct TYPE_12__ {size_t len; TYPE_2__* lines; } ;
struct TYPE_11__ {size_t first; char* words; } ;
struct TYPE_10__ {char* len; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROCFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (TYPE_4__*) ; 
 size_t FUNC3 (TYPE_4__*) ; 
 char* FUNC4 (TYPE_4__*,size_t,size_t) ; 
 size_t FUNC5 (TYPE_4__*,size_t) ; 

void FUNC6(procfile *ff) {
    size_t lines = FUNC3(ff), l;
    char *s;
    (void)s;

    FUNC0(D_PROCFILE, "File '%s' with %zu lines and %zu words", FUNC2(ff), ff->lines->len, ff->words->len);

    for(l = 0; FUNC1(l < lines) ;l++) {
        size_t words = FUNC5(ff, l);

        FUNC0(D_PROCFILE, " line %zu starts at word %zu and has %zu words", l, ff->lines->lines[l].first, ff->lines->lines[l].words);

        size_t w;
        for(w = 0; FUNC1(w < words) ;w++) {
            s = FUNC4(ff, l, w);
            FUNC0(D_PROCFILE, "     [%zu.%zu] '%s'", l, w, s);
        }
    }
}