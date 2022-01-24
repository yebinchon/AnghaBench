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
struct head {scalar_t__ magic; scalar_t__ namesize; scalar_t__ filesize_1; scalar_t__ filesize_2; } ;

/* Variables and functions */
 scalar_t__ MAGIC_BCPIO ; 
 void* FUNC0 (scalar_t__) ; 

__attribute__((used)) static void
FUNC1 (struct head *head)
{
  if (head->magic != MAGIC_BCPIO)
    {
      head->magic = FUNC0 (head->magic);
      head->namesize = FUNC0 (head->namesize);
      head->filesize_1 = FUNC0 (head->filesize_1);
      head->filesize_2 = FUNC0 (head->filesize_2);
    }
}