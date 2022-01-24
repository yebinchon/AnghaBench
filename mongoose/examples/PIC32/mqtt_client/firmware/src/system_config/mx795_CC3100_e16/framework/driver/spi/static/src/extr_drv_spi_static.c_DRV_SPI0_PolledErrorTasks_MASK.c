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
struct DRV_SPI_OBJ {TYPE_1__* currentJob; int /*<<< orphan*/  queue; int /*<<< orphan*/  (* operationEnded ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* completeCB ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ DRV_SPI_JOB_OBJECT ;
typedef  int /*<<< orphan*/  DRV_SPI_BUFFER_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_SPI_BUFFER_EVENT_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_ID_1 ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t FUNC7(struct DRV_SPI_OBJ * dObj)
{

    if (dObj->currentJob == NULL)
    {
        return 0;
    }

    register DRV_SPI_JOB_OBJECT * currentJob = dObj->currentJob;

    if (FUNC2(SPI_ID_1))
    {
        currentJob->status = DRV_SPI_BUFFER_EVENT_ERROR;
        if (currentJob->completeCB != NULL)
        {
            (*currentJob->completeCB)(DRV_SPI_BUFFER_EVENT_ERROR, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
        }
        if (dObj->operationEnded != NULL)
        {
            (*dObj->operationEnded)(DRV_SPI_BUFFER_EVENT_ERROR, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
        }
        if (FUNC0(dObj->queue, currentJob) != DRV_SPI_SYS_QUEUE_SUCCESS)
        {
            FUNC4(false, "\r\nSPI Driver: Queue free element error.");
            return 0;
        }
        dObj->currentJob = NULL;
        FUNC1(SPI_ID_1 );
        FUNC3 (SPI_ID_1 );
    }
    return 0;
}