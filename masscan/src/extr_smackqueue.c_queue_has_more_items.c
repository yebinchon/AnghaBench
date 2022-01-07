
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Queue {int * m_head; } ;



unsigned queue_has_more_items(struct Queue * queue)
{
  return queue->m_head != ((void*)0);
}
