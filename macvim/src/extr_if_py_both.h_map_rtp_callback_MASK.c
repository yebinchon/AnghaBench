#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * result; int /*<<< orphan*/  callable; } ;
typedef  TYPE_1__ map_rtp_data ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 

__attribute__((used)) static void
FUNC3(char_u *path, void *_data)
{
    void	**data = (void **) _data;
    PyObject	*pathObject;
    map_rtp_data	*mr_data = *((map_rtp_data **) data);

    if (!(pathObject = FUNC1((char *)path)))
    {
	*data = NULL;
	return;
    }

    mr_data->result = FUNC0(mr_data->callable,
						   pathObject, NULL);

    FUNC2(pathObject);

    if (!mr_data->result || mr_data->result != Py_None)
	*data = NULL;
    else
    {
	FUNC2(mr_data->result);
	mr_data->result = NULL;
    }
}