#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mpv_node {int dummy; } ;
struct TYPE_4__ {char* start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 TYPE_1__ FUNC0 (char*) ; 
 int FUNC1 (TYPE_1__*,struct mpv_node*,int) ; 

__attribute__((used)) static int FUNC2(char **dst, struct mpv_node *src, int indent)
{
    bstr buffer = FUNC0(*dst);
    int r = FUNC1(&buffer, src, indent);
    *dst = buffer.start;
    return r;
}