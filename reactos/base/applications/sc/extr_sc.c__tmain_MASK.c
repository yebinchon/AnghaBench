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
typedef  char* LPCTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,char*,char**,int) ; 

int FUNC2(int argc, LPCTSTR argv[])
{
    LPCTSTR Server = NULL;   // remote machine
    LPCTSTR Command = NULL;  // sc command
    LPCTSTR *Args = NULL;    // Any remaining args

    if (argc < 2)
    {
        FUNC0();
        return -1;
    }

    /* get server name */
    if ((argv[1][0] == '\\') && (argv[1][1] == '\\'))
    {
        if (argc < 3)
        {
            FUNC0();
            return -1;
        }

        Server = argv[1];
        Command = argv[2];
        if (argc > 3)
            Args = &argv[3];

        return FUNC1(Server,
                         Command,
                         Args,
                         argc-3);
    }
    else
    {
        Command = argv[1];
        if (argc > 2)
            Args = &argv[2];

        return FUNC1(Server,
                         Command,
                         Args,
                         argc-2);
    }
}