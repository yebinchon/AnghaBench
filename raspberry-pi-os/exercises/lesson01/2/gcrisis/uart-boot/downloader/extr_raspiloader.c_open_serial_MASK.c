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
struct termios {int c_cflag; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; scalar_t__* c_cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  B115200 ; 
 int CLOCAL ; 
 int CREAD ; 
 int CS8 ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int O_NOCTTY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 size_t VMIN ; 
 size_t VTIME ; 
 scalar_t__ FUNC0 (struct termios*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct termios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (int,struct termios*) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,struct termios*) ; 

int FUNC10(const char *dev) {
    
    struct termios termios;
    int fd = FUNC5(dev, O_RDWR | O_NOCTTY);
    FUNC7("fd=%d\r\n",fd);
    if (fd == -1) 
    {
    // failed to open
        return -1;
    }
    // must be a tty
    if (!FUNC4(fd))
    {
        FUNC3(stderr, "%s is not a tty\n", dev);
        FUNC2(fd, EXIT_FAILURE);
    }

    // Get the attributes.
    if(FUNC8(fd, &termios) == -1)
    {
        FUNC6("Failed to get attributes of device");
        FUNC2(fd, EXIT_FAILURE);
    }
    // So, we poll.
    termios.c_cc[VTIME] = 0;
    termios.c_cc[VMIN] = 0;

    // 8N1 mode, no input/output/line processing masks.
    termios.c_iflag = 0;
    termios.c_oflag = 0;
    termios.c_cflag = CS8 | CREAD | CLOCAL;
    termios.c_lflag = 0;

    // Set the baud rate.
    if((FUNC0(&termios, B115200) < 0) ||
       (FUNC1(&termios, B115200) < 0))
    {
        FUNC6("Failed to set baud-rate");
        FUNC2(fd, EXIT_FAILURE);
    }

    // Write the attributes.
    if (FUNC9(fd, TCSAFLUSH, &termios) == -1) {
        FUNC6("tcsetattr()");
        FUNC2(fd, EXIT_FAILURE);
    }
    return fd;
}