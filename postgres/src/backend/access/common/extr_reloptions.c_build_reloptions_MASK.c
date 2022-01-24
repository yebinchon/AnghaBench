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
typedef  int /*<<< orphan*/  relopt_value ;
typedef  int /*<<< orphan*/  relopt_parse_elt ;
typedef  int /*<<< orphan*/  relopt_kind ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void *
FUNC5(Datum reloptions, bool validate,
				 relopt_kind kind,
				 Size relopt_struct_size,
				 const relopt_parse_elt *relopt_elems,
				 int num_relopt_elems)
{
	int			numoptions;
	relopt_value *options;
	void	   *rdopts;

	/* parse options specific to given relation option kind */
	options = FUNC3(reloptions, validate, kind, &numoptions);
	FUNC0(numoptions <= num_relopt_elems);

	/* if none set, we're done */
	if (numoptions == 0)
	{
		FUNC0(options == NULL);
		return NULL;
	}

	/* allocate and fill the structure */
	rdopts = FUNC1(relopt_struct_size, options, numoptions);
	FUNC2(rdopts, relopt_struct_size, options, numoptions,
				   validate, relopt_elems, num_relopt_elems);

	FUNC4(options);

	return rdopts;
}