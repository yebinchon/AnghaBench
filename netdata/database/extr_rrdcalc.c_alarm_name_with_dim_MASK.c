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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

char *FUNC2(char *name, size_t namelen, const char *dim, size_t dimlen) {
    char *newname,*move;

    newname = FUNC0(namelen + dimlen + 2);
    if(newname) {
        move = newname;
        FUNC1(move, name, namelen);
        move += namelen;

        *move++ = '_';
        FUNC1(move, dim, dimlen);
        move += dimlen;
        *move = '\0';
    } else {
        newname = name;
    }

    return newname;
}