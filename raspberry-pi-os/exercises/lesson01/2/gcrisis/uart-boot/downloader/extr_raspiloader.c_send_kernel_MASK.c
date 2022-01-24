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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int ssize_t ;
typedef  int off_t ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,long,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int FUNC7 (int,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,char*,int) ; 

void FUNC10(int fd, const char *file) {
    int file_fd;
    off_t off;
    uint32_t size;
    ssize_t pos;
    char *p;
    bool done = false;

    // Open file
    if ((file_fd = FUNC4(file, O_RDONLY)) == -1) {
        FUNC5(file);
        FUNC0(fd, EXIT_FAILURE);
    }

    // Get kernel size
    off = FUNC3(file_fd, 0L, SEEK_END);
    if (off > 0x200000) {
        FUNC1(stderr, "kernel too big\n");
        FUNC0(fd, EXIT_FAILURE);
    }
    size = FUNC2(off);
    FUNC3(file_fd, 0L, SEEK_SET);

    FUNC6("### sending kernel %s [%zu byte]\n", file, (size_t)off);

    // send kernel size to RPi
    p = (uint8_t*)&size;
    pos = 0;   
    while(pos < 4) 
    {
        ssize_t len = FUNC9(fd, &p[pos], 4 - pos);
        	FUNC8(fd);
        if (len == -1) {
            FUNC5("write()");
            FUNC0(fd, EXIT_FAILURE);
        }
        pos += len;
    }
    //check size
    uint8_t sizee[4]={0};
    pos=0;
    while(pos<4){
    int nn=FUNC7(fd, sizee, 4-pos);
        pos+=nn;
    }
    uint32_t size_check=sizee[0]<<24|sizee[1]<<16|sizee[2]<<8|sizee[3];
    if(size_check!=size)
    {
        FUNC5("size check error");
        FUNC0(fd, EXIT_FAILURE);
    }
    while(!done)
    {
        char buf[BUF_SIZE];
        ssize_t pos = 0;
        ssize_t len = FUNC7(file_fd, buf, BUF_SIZE);
        switch(len) {
        case -1:
            FUNC5("read()");
            FUNC0(fd, EXIT_FAILURE);
        case 0:
            done = true;
        }
        
        while(len > 0) 
        {
            ssize_t len2 = FUNC9(fd, &buf[pos], len);
            
            FUNC8(fd);        
            
            if (len2 == -1) {
            FUNC5("write()");
            FUNC0(fd, EXIT_FAILURE);
            }
            len -= len2;
            pos += len2;
        }
    }
    FUNC1(stderr, "### finished sending\n");

    return;
}