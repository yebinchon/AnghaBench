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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_5__ {int ndeps; int magic; int type; TYPE_1__** deps; } ;
struct TYPE_4__ {int nattributes; int degree; int* attributes; } ;
typedef  int Size ;
typedef  TYPE_1__ MVDependency ;
typedef  TYPE_2__ MVDependencies ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int SizeOfHeader ; 
 int FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int /*<<< orphan*/  FUNC4 (char*,int*,int) ; 
 scalar_t__ FUNC5 (int) ; 

bytea *
FUNC6(MVDependencies *dependencies)
{
	int			i;
	bytea	   *output;
	char	   *tmp;
	Size		len;

	/* we need to store ndeps, with a number of attributes for each one */
	len = VARHDRSZ + SizeOfHeader;

	/* and also include space for the actual attribute numbers and degrees */
	for (i = 0; i < dependencies->ndeps; i++)
		len += FUNC2(dependencies->deps[i]->nattributes);

	output = (bytea *) FUNC5(len);
	FUNC1(output, len);

	tmp = FUNC3(output);

	/* Store the base struct values (magic, type, ndeps) */
	FUNC4(tmp, &dependencies->magic, sizeof(uint32));
	tmp += sizeof(uint32);
	FUNC4(tmp, &dependencies->type, sizeof(uint32));
	tmp += sizeof(uint32);
	FUNC4(tmp, &dependencies->ndeps, sizeof(uint32));
	tmp += sizeof(uint32);

	/* store number of attributes and attribute numbers for each dependency */
	for (i = 0; i < dependencies->ndeps; i++)
	{
		MVDependency *d = dependencies->deps[i];

		FUNC4(tmp, &d->degree, sizeof(double));
		tmp += sizeof(double);

		FUNC4(tmp, &d->nattributes, sizeof(AttrNumber));
		tmp += sizeof(AttrNumber);

		FUNC4(tmp, d->attributes, sizeof(AttrNumber) * d->nattributes);
		tmp += sizeof(AttrNumber) * d->nattributes;

		/* protect against overflow */
		FUNC0(tmp <= ((char *) output + len));
	}

	/* make sure we've produced exactly the right amount of data */
	FUNC0(tmp == ((char *) output + len));

	return output;
}