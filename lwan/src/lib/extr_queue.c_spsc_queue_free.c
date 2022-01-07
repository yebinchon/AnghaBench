
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spsc_queue {int buffer; } ;


 int free (int ) ;

void spsc_queue_free(struct spsc_queue *q) { free(q->buffer); }
