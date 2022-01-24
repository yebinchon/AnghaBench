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
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ ANYARRAYOID ; 
 scalar_t__ ANYELEMENTOID ; 
 scalar_t__ ANYENUMOID ; 
 scalar_t__ ANYNONARRAYOID ; 
 scalar_t__ ANYRANGEOID ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ UNKNOWNOID ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

bool
FUNC6(const Oid *actual_arg_types,
							   const Oid *declared_arg_types,
							   int nargs)
{
	int			j;
	Oid			elem_typeid = InvalidOid;
	Oid			array_typeid = InvalidOid;
	Oid			array_typelem;
	Oid			range_typeid = InvalidOid;
	Oid			range_typelem;
	bool		have_anyelement = false;
	bool		have_anynonarray = false;
	bool		have_anyenum = false;

	/*
	 * Loop through the arguments to see if we have any that are polymorphic.
	 * If so, require the actual types to be consistent.
	 */
	for (j = 0; j < nargs; j++)
	{
		Oid			decl_type = declared_arg_types[j];
		Oid			actual_type = actual_arg_types[j];

		if (decl_type == ANYELEMENTOID ||
			decl_type == ANYNONARRAYOID ||
			decl_type == ANYENUMOID)
		{
			have_anyelement = true;
			if (decl_type == ANYNONARRAYOID)
				have_anynonarray = true;
			else if (decl_type == ANYENUMOID)
				have_anyenum = true;
			if (actual_type == UNKNOWNOID)
				continue;
			if (FUNC0(elem_typeid) && actual_type != elem_typeid)
				return false;
			elem_typeid = actual_type;
		}
		else if (decl_type == ANYARRAYOID)
		{
			if (actual_type == UNKNOWNOID)
				continue;
			actual_type = FUNC1(actual_type); /* flatten domains */
			if (FUNC0(array_typeid) && actual_type != array_typeid)
				return false;
			array_typeid = actual_type;
		}
		else if (decl_type == ANYRANGEOID)
		{
			if (actual_type == UNKNOWNOID)
				continue;
			actual_type = FUNC1(actual_type); /* flatten domains */
			if (FUNC0(range_typeid) && actual_type != range_typeid)
				return false;
			range_typeid = actual_type;
		}
	}

	/* Get the element type based on the array type, if we have one */
	if (FUNC0(array_typeid))
	{
		if (array_typeid == ANYARRAYOID)
		{
			/* Special case for ANYARRAY input: okay iff no ANYELEMENT */
			if (have_anyelement)
				return false;
			return true;
		}

		array_typelem = FUNC2(array_typeid);
		if (!FUNC0(array_typelem))
			return false;		/* should be an array, but isn't */

		if (!FUNC0(elem_typeid))
		{
			/*
			 * if we don't have an element type yet, use the one we just got
			 */
			elem_typeid = array_typelem;
		}
		else if (array_typelem != elem_typeid)
		{
			/* otherwise, they better match */
			return false;
		}
	}

	/* Get the element type based on the range type, if we have one */
	if (FUNC0(range_typeid))
	{
		range_typelem = FUNC3(range_typeid);
		if (!FUNC0(range_typelem))
			return false;		/* should be a range, but isn't */

		if (!FUNC0(elem_typeid))
		{
			/*
			 * if we don't have an element type yet, use the one we just got
			 */
			elem_typeid = range_typelem;
		}
		else if (range_typelem != elem_typeid)
		{
			/* otherwise, they better match */
			return false;
		}
	}

	if (have_anynonarray)
	{
		/* require the element type to not be an array or domain over array */
		if (FUNC4(elem_typeid))
			return false;
	}

	if (have_anyenum)
	{
		/* require the element type to be an enum */
		if (!FUNC5(elem_typeid))
			return false;
	}

	/* Looks valid */
	return true;
}