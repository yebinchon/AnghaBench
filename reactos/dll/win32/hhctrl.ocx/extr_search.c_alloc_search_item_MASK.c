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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/ * title; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ SearchItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static SearchItem *FUNC4(WCHAR *title, const WCHAR *filename)
{
    int filename_len = filename ? (FUNC2(filename)+1)*sizeof(WCHAR) : 0;
    SearchItem *item;

    item = FUNC1(sizeof(SearchItem));
    if(filename)
    {
        item->filename = FUNC0(filename_len);
        FUNC3(item->filename, filename, filename_len);
    }
    item->title = title; /* Already allocated */

    return item;
}