#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smb_lock ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC3(stream_t *s, void *buffer, int max_len){
  struct priv *p = s->priv;
  FUNC0(&smb_lock);
  int r = FUNC2(p->fd,buffer,max_len);
  FUNC1(&smb_lock);
  return (r <= 0) ? -1 : r;
}