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
struct per_core_single_number_file {int found; int fd; scalar_t__ value; int /*<<< orphan*/  filename; } ;
struct cpu_chart {struct per_core_single_number_file* files; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ keep_per_core_fds_open ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int,char*,int) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct cpu_chart *all_cpu_charts, size_t len, size_t index) {
    char buf[50 + 1];
    size_t x, files_read = 0, files_nonzero = 0;

    for(x = 0; x < len ; x++) {
        struct per_core_single_number_file *f = &all_cpu_charts[x].files[index];

        f->found = 0;

        if(FUNC7(!f->filename))
            continue;

        if(FUNC7(f->fd == -1)) {
            f->fd = FUNC4(f->filename, O_RDONLY);
            if (FUNC7(f->fd == -1)) {
                FUNC1("Cannot open file '%s'", f->filename);
                continue;
            }
        }

        ssize_t ret = FUNC5(f->fd, buf, 50);
        if(FUNC7(ret < 0)) {
            // cannot read that file

            FUNC1("Cannot read file '%s'", f->filename);
            FUNC0(f->fd);
            f->fd = -1;
            continue;
        }
        else {
            // successful read

            // terminate the buffer
            buf[ret] = '\0';

            if(FUNC7(keep_per_core_fds_open != CONFIG_BOOLEAN_YES)) {
                FUNC0(f->fd);
                f->fd = -1;
            }
            else if(FUNC3(f->fd, 0, SEEK_SET) == -1) {
                FUNC1("Cannot seek in file '%s'", f->filename);
                FUNC0(f->fd);
                f->fd = -1;
            }
        }

        files_read++;
        f->found = 1;

        f->value = FUNC6(buf, NULL);
        if(FUNC2(f->value != 0))
            files_nonzero++;
    }

    if(files_read == 0)
        return -1;

    if(files_nonzero == 0)
        return 0;

    return (int)files_nonzero;
}