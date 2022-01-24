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
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  litespeed_cleanup ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ s_stop ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int*) ; 

void FUNC9( int children )
{
    struct sigaction act, old_term, old_quit, old_int, old_usr1;
    int running = 0;
    int status;
    pid_t pid;

    /* Create a process group */
    FUNC5();

    /* Set up handler to kill children upon exit */
    FUNC7(&act.sa_mask);
    act.sa_flags = 0;
    act.sa_handler = litespeed_cleanup;
    if( FUNC6( SIGTERM, &act, &old_term ) ||
        FUNC6( SIGINT,  &act, &old_int  ) ||
        FUNC6( SIGUSR1, &act, &old_usr1 ) ||
        FUNC6( SIGQUIT, &act, &old_quit )) {
        FUNC4( "Can't set signals" );
        FUNC0( 1 );
    }
    s_stop = 0;
    while( 1 ) {
        while((!s_stop )&&( running < children )) {
            pid = FUNC1();
            switch( pid ) {
            case 0: /* children process */

                /* don't catch our signals */
                FUNC6( SIGTERM, &old_term, 0 );
                FUNC6( SIGQUIT, &old_quit, 0 );
                FUNC6( SIGINT,  &old_int,  0 );
                FUNC6( SIGUSR1, &old_usr1, 0 );
                return ;
            case -1:
                FUNC4( "php (pre-forking)" );
                FUNC0( 1 );
                break;
            default: /* parent process */
                running++;
                break;
            }
        }
        if ( s_stop ) {
            break;
        }
        pid = FUNC8( &status );
        running--;
    }
    FUNC3( -FUNC2(), SIGUSR1 );
    FUNC0( 0 );
}