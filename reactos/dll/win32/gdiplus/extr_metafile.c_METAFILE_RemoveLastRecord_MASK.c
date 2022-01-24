#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int Size; } ;
struct TYPE_5__ {int comment_data_length; int /*<<< orphan*/ * comment_data; } ;
typedef  TYPE_1__ GpMetafile ;
typedef  TYPE_2__ EmfPlusRecordHeader ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(GpMetafile *metafile, EmfPlusRecordHeader *record)
{
    FUNC0(metafile->comment_data + metafile->comment_data_length == (BYTE*)record + record->Size);
    metafile->comment_data_length -=  record->Size;
}