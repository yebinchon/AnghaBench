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
struct slabinfo {int slabs; unsigned long objects; unsigned long object_size; unsigned long long slab_size; int partial; int objects_partial; } ;

/* Variables and functions */
 int alias_targets ; 
 int aliases ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned long long FUNC1 (struct slabinfo*) ; 
 struct slabinfo* slabinfo ; 
 int slabs ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct slabinfo *s;

	int used_slabs = 0;
	char b1[20], b2[20], b3[20], b4[20];
	unsigned long long max = 1ULL << 63;

	/* Object size */
	unsigned long long min_objsize = max, max_objsize = 0, avg_objsize;

	/* Number of partial slabs in a slabcache */
	unsigned long long min_partial = max, max_partial = 0,
				avg_partial, total_partial = 0;

	/* Number of slabs in a slab cache */
	unsigned long long min_slabs = max, max_slabs = 0,
				avg_slabs, total_slabs = 0;

	/* Size of the whole slab */
	unsigned long long min_size = max, max_size = 0,
				avg_size, total_size = 0;

	/* Bytes used for object storage in a slab */
	unsigned long long min_used = max, max_used = 0,
				avg_used, total_used = 0;

	/* Waste: Bytes used for alignment and padding */
	unsigned long long min_waste = max, max_waste = 0,
				avg_waste, total_waste = 0;
	/* Number of objects in a slab */
	unsigned long long min_objects = max, max_objects = 0,
				avg_objects, total_objects = 0;
	/* Waste per object */
	unsigned long long min_objwaste = max,
				max_objwaste = 0, avg_objwaste,
				total_objwaste = 0;

	/* Memory per object */
	unsigned long long min_memobj = max,
				max_memobj = 0, avg_memobj,
				total_objsize = 0;

	/* Percentage of partial slabs per slab */
	unsigned long min_ppart = 100, max_ppart = 0,
				avg_ppart, total_ppart = 0;

	/* Number of objects in partial slabs */
	unsigned long min_partobj = max, max_partobj = 0,
				avg_partobj, total_partobj = 0;

	/* Percentage of partial objects of all objects in a slab */
	unsigned long min_ppartobj = 100, max_ppartobj = 0,
				avg_ppartobj, total_ppartobj = 0;


	for (s = slabinfo; s < slabinfo + slabs; s++) {
		unsigned long long size;
		unsigned long used;
		unsigned long long wasted;
		unsigned long long objwaste;
		unsigned long percentage_partial_slabs;
		unsigned long percentage_partial_objs;

		if (!s->slabs || !s->objects)
			continue;

		used_slabs++;

		size = FUNC1(s);
		used = s->objects * s->object_size;
		wasted = size - used;
		objwaste = s->slab_size - s->object_size;

		percentage_partial_slabs = s->partial * 100 / s->slabs;
		if (percentage_partial_slabs > 100)
			percentage_partial_slabs = 100;

		percentage_partial_objs = s->objects_partial * 100
							/ s->objects;

		if (percentage_partial_objs > 100)
			percentage_partial_objs = 100;

		if (s->object_size < min_objsize)
			min_objsize = s->object_size;
		if (s->partial < min_partial)
			min_partial = s->partial;
		if (s->slabs < min_slabs)
			min_slabs = s->slabs;
		if (size < min_size)
			min_size = size;
		if (wasted < min_waste)
			min_waste = wasted;
		if (objwaste < min_objwaste)
			min_objwaste = objwaste;
		if (s->objects < min_objects)
			min_objects = s->objects;
		if (used < min_used)
			min_used = used;
		if (s->objects_partial < min_partobj)
			min_partobj = s->objects_partial;
		if (percentage_partial_slabs < min_ppart)
			min_ppart = percentage_partial_slabs;
		if (percentage_partial_objs < min_ppartobj)
			min_ppartobj = percentage_partial_objs;
		if (s->slab_size < min_memobj)
			min_memobj = s->slab_size;

		if (s->object_size > max_objsize)
			max_objsize = s->object_size;
		if (s->partial > max_partial)
			max_partial = s->partial;
		if (s->slabs > max_slabs)
			max_slabs = s->slabs;
		if (size > max_size)
			max_size = size;
		if (wasted > max_waste)
			max_waste = wasted;
		if (objwaste > max_objwaste)
			max_objwaste = objwaste;
		if (s->objects > max_objects)
			max_objects = s->objects;
		if (used > max_used)
			max_used = used;
		if (s->objects_partial > max_partobj)
			max_partobj = s->objects_partial;
		if (percentage_partial_slabs > max_ppart)
			max_ppart = percentage_partial_slabs;
		if (percentage_partial_objs > max_ppartobj)
			max_ppartobj = percentage_partial_objs;
		if (s->slab_size > max_memobj)
			max_memobj = s->slab_size;

		total_partial += s->partial;
		total_slabs += s->slabs;
		total_size += size;
		total_waste += wasted;

		total_objects += s->objects;
		total_used += used;
		total_partobj += s->objects_partial;
		total_ppart += percentage_partial_slabs;
		total_ppartobj += percentage_partial_objs;

		total_objwaste += s->objects * objwaste;
		total_objsize += s->objects * s->slab_size;
	}

	if (!total_objects) {
		FUNC0("No objects\n");
		return;
	}
	if (!used_slabs) {
		FUNC0("No slabs\n");
		return;
	}

	/* Per slab averages */
	avg_partial = total_partial / used_slabs;
	avg_slabs = total_slabs / used_slabs;
	avg_size = total_size / used_slabs;
	avg_waste = total_waste / used_slabs;

	avg_objects = total_objects / used_slabs;
	avg_used = total_used / used_slabs;
	avg_partobj = total_partobj / used_slabs;
	avg_ppart = total_ppart / used_slabs;
	avg_ppartobj = total_ppartobj / used_slabs;

	/* Per object object sizes */
	avg_objsize = total_used / total_objects;
	avg_objwaste = total_objwaste / total_objects;
	avg_partobj = total_partobj * 100 / total_objects;
	avg_memobj = total_objsize / total_objects;

	FUNC0("Slabcache Totals\n");
	FUNC0("----------------\n");
	FUNC0("Slabcaches : %15d   Aliases  : %11d->%-3d  Active:    %3d\n",
			slabs, aliases, alias_targets, used_slabs);

	FUNC2(b1, total_size);FUNC2(b2, total_waste);
	FUNC2(b3, total_waste * 100 / total_used);
	FUNC0("Memory used: %15s   # Loss   : %15s   MRatio:%6s%%\n", b1, b2, b3);

	FUNC2(b1, total_objects);FUNC2(b2, total_partobj);
	FUNC2(b3, total_partobj * 100 / total_objects);
	FUNC0("# Objects  : %15s   # PartObj: %15s   ORatio:%6s%%\n", b1, b2, b3);

	FUNC0("\n");
	FUNC0("Per Cache         Average              "
		"Min              Max            Total\n");
	FUNC0("---------------------------------------"
		"-------------------------------------\n");

	FUNC2(b1, avg_objects);FUNC2(b2, min_objects);
	FUNC2(b3, max_objects);FUNC2(b4, total_objects);
	FUNC0("#Objects  %15s  %15s  %15s  %15s\n",
			b1,	b2,	b3,	b4);

	FUNC2(b1, avg_slabs);FUNC2(b2, min_slabs);
	FUNC2(b3, max_slabs);FUNC2(b4, total_slabs);
	FUNC0("#Slabs    %15s  %15s  %15s  %15s\n",
			b1,	b2,	b3,	b4);

	FUNC2(b1, avg_partial);FUNC2(b2, min_partial);
	FUNC2(b3, max_partial);FUNC2(b4, total_partial);
	FUNC0("#PartSlab %15s  %15s  %15s  %15s\n",
			b1,	b2,	b3,	b4);
	FUNC2(b1, avg_ppart);FUNC2(b2, min_ppart);
	FUNC2(b3, max_ppart);
	FUNC2(b4, total_partial * 100  / total_slabs);
	FUNC0("%%PartSlab%15s%% %15s%% %15s%% %15s%%\n",
			b1,	b2,	b3,	b4);

	FUNC2(b1, avg_partobj);FUNC2(b2, min_partobj);
	FUNC2(b3, max_partobj);
	FUNC2(b4, total_partobj);
	FUNC0("PartObjs  %15s  %15s  %15s  %15s\n",
			b1,	b2,	b3,	b4);

	FUNC2(b1, avg_ppartobj);FUNC2(b2, min_ppartobj);
	FUNC2(b3, max_ppartobj);
	FUNC2(b4, total_partobj * 100 / total_objects);
	FUNC0("%% PartObj%15s%% %15s%% %15s%% %15s%%\n",
			b1,	b2,	b3,	b4);

	FUNC2(b1, avg_size);FUNC2(b2, min_size);
	FUNC2(b3, max_size);FUNC2(b4, total_size);
	FUNC0("Memory    %15s  %15s  %15s  %15s\n",
			b1,	b2,	b3,	b4);

	FUNC2(b1, avg_used);FUNC2(b2, min_used);
	FUNC2(b3, max_used);FUNC2(b4, total_used);
	FUNC0("Used      %15s  %15s  %15s  %15s\n",
			b1,	b2,	b3,	b4);

	FUNC2(b1, avg_waste);FUNC2(b2, min_waste);
	FUNC2(b3, max_waste);FUNC2(b4, total_waste);
	FUNC0("Loss      %15s  %15s  %15s  %15s\n",
			b1,	b2,	b3,	b4);

	FUNC0("\n");
	FUNC0("Per Object        Average              "
		"Min              Max\n");
	FUNC0("---------------------------------------"
		"--------------------\n");

	FUNC2(b1, avg_memobj);FUNC2(b2, min_memobj);
	FUNC2(b3, max_memobj);
	FUNC0("Memory    %15s  %15s  %15s\n",
			b1,	b2,	b3);
	FUNC2(b1, avg_objsize);FUNC2(b2, min_objsize);
	FUNC2(b3, max_objsize);
	FUNC0("User      %15s  %15s  %15s\n",
			b1,	b2,	b3);

	FUNC2(b1, avg_objwaste);FUNC2(b2, min_objwaste);
	FUNC2(b3, max_objwaste);
	FUNC0("Loss      %15s  %15s  %15s\n",
			b1,	b2,	b3);
}