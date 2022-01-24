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
struct TYPE_5__ {int Size; int DataSize; } ;
struct TYPE_4__ {int comment_data_size; char* comment_data; int comment_data_length; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpMetafile ;
typedef  TYPE_2__ EmfPlusRecordHeader ;
typedef  int DWORD ;
typedef  char BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  OutOfMemory ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static GpStatus FUNC4(GpMetafile *metafile, DWORD size, void **result)
{
    DWORD size_needed;
    EmfPlusRecordHeader *record;

    if (!metafile->comment_data_size)
    {
        DWORD data_size = FUNC2(256, size * 2 + 4);
        metafile->comment_data = FUNC0(data_size);

        if (!metafile->comment_data)
            return OutOfMemory;

        FUNC3(metafile->comment_data, "EMF+", 4);

        metafile->comment_data_size = data_size;
        metafile->comment_data_length = 4;
    }

    size_needed = size + metafile->comment_data_length;

    if (size_needed > metafile->comment_data_size)
    {
        DWORD data_size = size_needed * 2;
        BYTE *new_data = FUNC0(data_size);

        if (!new_data)
            return OutOfMemory;

        FUNC3(new_data, metafile->comment_data, metafile->comment_data_length);

        metafile->comment_data_size = data_size;
        FUNC1(metafile->comment_data);
        metafile->comment_data = new_data;
    }

    *result = metafile->comment_data + metafile->comment_data_length;
    metafile->comment_data_length += size;

    record = (EmfPlusRecordHeader*)*result;
    record->Size = size;
    record->DataSize = size - sizeof(EmfPlusRecordHeader);

    return Ok;
}