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
struct TYPE_3__ {scalar_t__ refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  lock_path; scalar_t__ log_file; scalar_t__ qlog_file; int /*<<< orphan*/ * bz_qlog; int /*<<< orphan*/ * bz_file; } ;
typedef  TYPE_1__ LoggerHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(LoggerHandle* h) {
  FUNC4(&h->lock);
  FUNC1(h->refcnt > 0);
  h->refcnt--;
  if (h->refcnt == 0) {
    if (h->bz_file){
      int bzerror;
      FUNC0(&bzerror, h->bz_file, 0, NULL, NULL);
      h->bz_file = NULL;
    }
    if (h->bz_qlog){
      int bzerror;
      FUNC0(&bzerror, h->bz_qlog, 0, NULL, NULL);
      h->bz_qlog = NULL;
    }
    if (h->qlog_file) FUNC2(h->qlog_file);
    FUNC2(h->log_file);
    FUNC6(h->lock_path);
    FUNC5(&h->lock);
    FUNC3(&h->lock);
    return;
  }
  FUNC5(&h->lock);
}