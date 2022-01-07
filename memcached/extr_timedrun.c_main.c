
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm (int) ;
 int assert (int) ;
 int atoi (char*) ;
 int spawn_and_wait (char**) ;

int main(int argc, char **argv)
{
    int naptime = 0;
    assert(argc > 2);

    naptime = atoi(argv[1]);
    assert(naptime > 0 && naptime < 1800);

    alarm(naptime);

    return spawn_and_wait(argv+2);
}
