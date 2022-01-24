#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct collector {char* plugin; char* module; } ;
struct array_printer {scalar_t__ c; int /*<<< orphan*/ * wb; } ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

int FUNC1(void *entry, void *data) {
    struct array_printer *ap = (struct array_printer *)data;
    BUFFER *wb = ap->wb;
    struct collector *col=(struct collector *) entry;
    if(ap->c) FUNC0(wb, ",");
    FUNC0(wb, "\n\t\t{\n\t\t\t\"plugin\": \"");
    FUNC0(wb, col->plugin);
    FUNC0(wb, "\",\n\t\t\t\"module\": \"");
    FUNC0(wb, col->module);
    FUNC0(wb, "\"\n\t\t}");
    (ap->c)++;
    return 0;
}