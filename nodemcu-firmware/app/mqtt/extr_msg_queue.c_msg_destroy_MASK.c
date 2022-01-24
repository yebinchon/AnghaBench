#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* data; } ;
struct TYPE_6__ {TYPE_1__ msg; } ;
typedef  TYPE_2__ msg_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1(msg_queue_t *node){
  if(!node) return;
  if(node->msg.data){
    FUNC0(node->msg.data);
    node->msg.data = NULL;
  }
  FUNC0(node);
}