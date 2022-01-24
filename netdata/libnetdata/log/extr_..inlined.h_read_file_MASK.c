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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,char*,size_t) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(const char *filename, char *buffer, size_t size) {
    if(FUNC3(!size)) return 3;

    int fd = FUNC1(filename, O_RDONLY, 0666);
    if(FUNC3(fd == -1)) {
        buffer[0] = '\0';
        return 1;
    }

    ssize_t r = FUNC2(fd, buffer, size);
    if(FUNC3(r == -1)) {
        buffer[0] = '\0';
        FUNC0(fd);
        return 2;
    }
    buffer[r] = '\0';

    FUNC0(fd);
    return 0;
}