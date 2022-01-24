#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* buffer; size_t size; int /*<<< orphan*/  contenttype; } ;
typedef  int /*<<< orphan*/  BUFFER_OVERFLOW_EOF ;
typedef  TYPE_1__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TEXT_PLAIN ; 
 int /*<<< orphan*/  D_WEB_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC4 (size_t) ; 

BUFFER *FUNC5(size_t size)
{
    BUFFER *b;

    FUNC3(D_WEB_BUFFER, "Creating new web buffer of size %zu.", size);

    b = FUNC2(1, sizeof(BUFFER));
    b->buffer = FUNC4(size + sizeof(BUFFER_OVERFLOW_EOF) + 2);
    b->buffer[0] = '\0';
    b->size = size;
    b->contenttype = CT_TEXT_PLAIN;
    FUNC1(b);
    FUNC0(b);

    return(b);
}