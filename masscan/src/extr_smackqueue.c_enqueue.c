
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct QueueElement {unsigned int m_data; struct QueueElement* m_next; } ;
struct Queue {struct QueueElement* m_tail; struct QueueElement* m_head; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 int stderr ;

void
enqueue(struct Queue *queue, unsigned data)
{
    struct QueueElement *element;

    element = (struct QueueElement *)malloc(sizeof (struct QueueElement));
    if (element == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }

    if (queue->m_head == ((void*)0)) {


        queue->m_head = element;
    } else {

        queue->m_tail->m_next = element;
    }

    element->m_data = data;
    element->m_next = ((void*)0);
    queue->m_tail = element;
}
