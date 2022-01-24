#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ leafType; scalar_t__ prefixType; scalar_t__ labelType; scalar_t__ attType; } ;
typedef  TYPE_1__ spgConfigIn ;
struct TYPE_21__ {scalar_t__ atttypid; } ;
struct TYPE_20__ {int /*<<< orphan*/ * rd_amcache; int /*<<< orphan*/ * rd_indcollation; TYPE_10__* rd_att; int /*<<< orphan*/  rd_indexcxt; } ;
struct TYPE_19__ {int /*<<< orphan*/  lastUsedPages; TYPE_1__ config; int /*<<< orphan*/  attLabelType; int /*<<< orphan*/  attPrefixType; int /*<<< orphan*/  attType; int /*<<< orphan*/  attLeafType; } ;
struct TYPE_18__ {scalar_t__ magicNumber; int /*<<< orphan*/  lastUsedPages; } ;
struct TYPE_16__ {int natts; } ;
typedef  TYPE_2__ SpGistMetaPageData ;
typedef  TYPE_3__ SpGistCache ;
typedef  TYPE_4__* Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  SPGIST_COMPRESS_PROC ; 
 int /*<<< orphan*/  SPGIST_CONFIG_PROC ; 
 scalar_t__ SPGIST_MAGIC_NUMBER ; 
 int /*<<< orphan*/  SPGIST_METAPAGE_BLKNO ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC10 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC17 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 

SpGistCache *
FUNC19(Relation index)
{
	SpGistCache *cache;

	if (index->rd_amcache == NULL)
	{
		Oid			atttype;
		spgConfigIn in;
		FmgrInfo   *procinfo;
		Buffer		metabuffer;
		SpGistMetaPageData *metadata;

		cache = FUNC4(index->rd_indexcxt,
									   sizeof(SpGistCache));

		/* SPGiST doesn't support multi-column indexes */
		FUNC0(index->rd_att->natts == 1);

		/*
		 * Get the actual data type of the indexed column from the index
		 * tupdesc.  We pass this to the opclass config function so that
		 * polymorphic opclasses are possible.
		 */
		atttype = FUNC10(index->rd_att, 0)->atttypid;

		/* Call the config function to get config info for the opclass */
		in.attType = atttype;

		procinfo = FUNC18(index, 1, SPGIST_CONFIG_PROC);
		FUNC2(procinfo,
						  index->rd_indcollation[0],
						  FUNC6(&in),
						  FUNC6(&cache->config));

		/* Get the information we need about each relevant datatype */
		FUNC16(&cache->attType, atttype);

		if (FUNC5(cache->config.leafType) &&
			cache->config.leafType != atttype)
		{
			if (!FUNC5(FUNC17(index, 1, SPGIST_COMPRESS_PROC)))
				FUNC13(ERROR,
						(FUNC14(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC15("compress method must be defined when leaf type is different from input type")));

			FUNC16(&cache->attLeafType, cache->config.leafType);
		}
		else
		{
			cache->attLeafType = cache->attType;
		}

		FUNC16(&cache->attPrefixType, cache->config.prefixType);
		FUNC16(&cache->attLabelType, cache->config.labelType);

		/* Last, get the lastUsedPages data from the metapage */
		metabuffer = FUNC7(index, SPGIST_METAPAGE_BLKNO);
		FUNC3(metabuffer, BUFFER_LOCK_SHARE);

		metadata = FUNC9(FUNC1(metabuffer));

		if (metadata->magicNumber != SPGIST_MAGIC_NUMBER)
			FUNC12(ERROR, "index \"%s\" is not an SP-GiST index",
				 FUNC8(index));

		cache->lastUsedPages = metadata->lastUsedPages;

		FUNC11(metabuffer);

		index->rd_amcache = (void *) cache;
	}
	else
	{
		/* assume it's up to date */
		cache = (SpGistCache *) index->rd_amcache;
	}

	return cache;
}