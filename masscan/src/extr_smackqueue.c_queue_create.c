
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Queue {int dummy; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 int memset (struct Queue*,int ,int) ;
 int stderr ;

struct Queue *
queue_create(void)
{
    struct Queue *queue;
    queue = (struct Queue *)malloc(sizeof(*queue));
    if (queue == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }
    memset(queue, 0, sizeof(*queue));
    return queue;
}
