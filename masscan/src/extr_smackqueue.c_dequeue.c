
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct QueueElement {unsigned int m_data; struct QueueElement* m_next; } ;
struct Queue {struct QueueElement* m_head; } ;


 int free (struct QueueElement*) ;

unsigned
dequeue(struct Queue *queue)
{
    if (queue->m_head == ((void*)0))
        return 0;
    else {
        struct QueueElement *element;
        unsigned result;

        element = queue->m_head;
        result = element->m_data;
        queue->m_head = element->m_next;

        free(element);
        return result;
    }
}
