#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; TYPE_1__* dt; int /*<<< orphan*/  internal_format_size; } ;
struct TYPE_4__ {scalar_t__ offset_in; int size; int value; int /*<<< orphan*/  offset_out; } ;
typedef  TYPE_2__ DataFormat ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void *out, DWORD size, const void *in, const DataFormat *df)
{
    int i;
    const char *in_c = in;
    char *out_c = out;

    FUNC2(out, 0, size);
    if (df->dt == NULL) {
	/* This means that the app uses Wine's internal data format */
        FUNC1(out, in, FUNC3(size, df->internal_format_size));
    } else {
	for (i = 0; i < df->size; i++) {
	    if (df->dt[i].offset_in >= 0) {
		switch (df->dt[i].size) {
		    case 1:
		        FUNC0("Copying (c) to %d from %d (value %d)\n",
                              df->dt[i].offset_out, df->dt[i].offset_in, *(in_c + df->dt[i].offset_in));
			*(out_c + df->dt[i].offset_out) = *(in_c + df->dt[i].offset_in);
			break;

		    case 2:
			FUNC0("Copying (s) to %d from %d (value %d)\n",
			      df->dt[i].offset_out, df->dt[i].offset_in, *((const short *)(in_c + df->dt[i].offset_in)));
			*((short *)(out_c + df->dt[i].offset_out)) = *((const short *)(in_c + df->dt[i].offset_in));
			break;

		    case 4:
			FUNC0("Copying (i) to %d from %d (value %d)\n",
                              df->dt[i].offset_out, df->dt[i].offset_in, *((const int *)(in_c + df->dt[i].offset_in)));
                        *((int *)(out_c + df->dt[i].offset_out)) = *((const int *)(in_c + df->dt[i].offset_in));
			break;

		    default:
			FUNC1((out_c + df->dt[i].offset_out), (in_c + df->dt[i].offset_in), df->dt[i].size);
			break;
		}
	    } else {
		switch (df->dt[i].size) {
		    case 1:
		        FUNC0("Copying (c) to %d default value %d\n",
			      df->dt[i].offset_out, df->dt[i].value);
			*(out_c + df->dt[i].offset_out) = (char) df->dt[i].value;
			break;
			
		    case 2:
			FUNC0("Copying (s) to %d default value %d\n",
			      df->dt[i].offset_out, df->dt[i].value);
			*((short *) (out_c + df->dt[i].offset_out)) = (short) df->dt[i].value;
			break;
			
		    case 4:
			FUNC0("Copying (i) to %d default value %d\n",
			      df->dt[i].offset_out, df->dt[i].value);
			*((int *) (out_c + df->dt[i].offset_out)) = df->dt[i].value;
			break;
			
		    default:
			FUNC2((out_c + df->dt[i].offset_out), 0, df->dt[i].size);
			break;
		}
	    }
	}
    }
}