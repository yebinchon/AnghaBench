
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
typedef int pid_t ;


 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int exit (int) ;
 int fork () ;
 int getpgrp () ;
 int kill (int ,int ) ;
 int litespeed_cleanup ;
 int perror (char*) ;
 scalar_t__ s_stop ;
 int setsid () ;
 scalar_t__ sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 int wait (int*) ;

void start_children( int children )
{
    struct sigaction act, old_term, old_quit, old_int, old_usr1;
    int running = 0;
    int status;
    pid_t pid;


    setsid();


    sigemptyset(&act.sa_mask);
    act.sa_flags = 0;
    act.sa_handler = litespeed_cleanup;
    if( sigaction( SIGTERM, &act, &old_term ) ||
        sigaction( SIGINT, &act, &old_int ) ||
        sigaction( SIGUSR1, &act, &old_usr1 ) ||
        sigaction( SIGQUIT, &act, &old_quit )) {
        perror( "Can't set signals" );
        exit( 1 );
    }
    s_stop = 0;
    while( 1 ) {
        while((!s_stop )&&( running < children )) {
            pid = fork();
            switch( pid ) {
            case 0:


                sigaction( SIGTERM, &old_term, 0 );
                sigaction( SIGQUIT, &old_quit, 0 );
                sigaction( SIGINT, &old_int, 0 );
                sigaction( SIGUSR1, &old_usr1, 0 );
                return ;
            case -1:
                perror( "php (pre-forking)" );
                exit( 1 );
                break;
            default:
                running++;
                break;
            }
        }
        if ( s_stop ) {
            break;
        }
        pid = wait( &status );
        running--;
    }
    kill( -getpgrp(), SIGUSR1 );
    exit( 0 );
}
