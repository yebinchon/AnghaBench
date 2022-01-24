#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zend_off_t ;
typedef  int ssize_t ;
struct TYPE_7__ {int eof; scalar_t__ abstract; } ;
typedef  TYPE_1__ php_stream ;
struct TYPE_8__ {scalar_t__ uncompressed_filesize; scalar_t__ is_deleted; scalar_t__ link; } ;
typedef  TYPE_2__ phar_entry_info ;
struct TYPE_9__ {scalar_t__ position; scalar_t__ zero; int /*<<< orphan*/  fp; TYPE_2__* internal_file; } ;
typedef  TYPE_3__ phar_entry_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(php_stream *stream, char *buf, size_t count) /* {{{ */
{
	phar_entry_data *data = (phar_entry_data *)stream->abstract;
	size_t got;
	phar_entry_info *entry;

	if (data->internal_file->link) {
		entry = FUNC1(data->internal_file);
	} else {
		entry = data->internal_file;
	}

	if (entry->is_deleted) {
		stream->eof = 1;
		return -1;
	}

	/* use our proxy position */
	FUNC3(data->fp, data->position + data->zero, SEEK_SET);

	got = FUNC2(data->fp, buf, FUNC0(count, (size_t)(entry->uncompressed_filesize - data->position)));
	data->position = FUNC4(data->fp) - data->zero;
	stream->eof = (data->position == (zend_off_t) entry->uncompressed_filesize);

	return got;
}