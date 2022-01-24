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
struct stat {int st_mode; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int S_IFLNK ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char const*,char const*) ; 

int FUNC5(const char *path, const char *subpath) {
    char *s = FUNC4(path, subpath);

    size_t max_links = 100;

    int is_file = 0;
    struct stat statbuf;
    while(max_links-- && FUNC2(s, &statbuf) == 0) {
        if((statbuf.st_mode & S_IFMT) == S_IFREG) {
            is_file = 1;
            break;
        }
        else if((statbuf.st_mode & S_IFMT) == S_IFLNK) {
            char buffer[FILENAME_MAX + 1];
            ssize_t l = FUNC1(s, buffer, FILENAME_MAX);
            if(l > 0) {
                buffer[l] = '\0';
                FUNC0(s);
                s = FUNC3(buffer);
                continue;
            }
            else {
                is_file = 0;
                break;
            }
        }
        else {
            is_file = 0;
            break;
        }
    }

    FUNC0(s);
    return is_file;
}