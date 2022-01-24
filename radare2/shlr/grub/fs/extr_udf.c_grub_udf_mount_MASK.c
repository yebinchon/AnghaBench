#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ tag_ident; } ;
struct TYPE_8__ {int /*<<< orphan*/  block_num; int /*<<< orphan*/  part_ref; } ;
struct TYPE_9__ {TYPE_3__ block; } ;
struct TYPE_6__ {int /*<<< orphan*/  start; } ;
struct grub_udf_vrs {scalar_t__ tag_ident; int part_num; int /*<<< orphan*/  root_icb; TYPE_5__ tag; TYPE_4__ root_fileset; int /*<<< orphan*/  num_part_maps; int /*<<< orphan*/  part_maps; TYPE_1__ vds; int /*<<< orphan*/  magic; } ;
struct grub_udf_tag {scalar_t__ tag_ident; int part_num; int /*<<< orphan*/  root_icb; TYPE_5__ tag; TYPE_4__ root_fileset; int /*<<< orphan*/  num_part_maps; int /*<<< orphan*/  part_maps; TYPE_1__ vds; int /*<<< orphan*/  magic; } ;
struct grub_udf_pd {int dummy; } ;
struct TYPE_7__ {int part_num; } ;
struct grub_udf_partmap {scalar_t__ type; TYPE_2__ type1; int /*<<< orphan*/  length; } ;
struct grub_udf_lvd {int dummy; } ;
struct grub_udf_fileset {scalar_t__ tag_ident; int part_num; int /*<<< orphan*/  root_icb; TYPE_5__ tag; TYPE_4__ root_fileset; int /*<<< orphan*/  num_part_maps; int /*<<< orphan*/  part_maps; TYPE_1__ vds; int /*<<< orphan*/  magic; } ;
struct grub_udf_data {size_t npd; size_t npm; int /*<<< orphan*/  root_icb; struct grub_udf_vrs lvd; struct grub_udf_partmap** pms; struct grub_udf_vrs* pds; int /*<<< orphan*/  disk; } ;
struct grub_udf_avdp {scalar_t__ tag_ident; int part_num; int /*<<< orphan*/  root_icb; TYPE_5__ tag; TYPE_4__ root_fileset; int /*<<< orphan*/  num_part_maps; int /*<<< orphan*/  part_maps; TYPE_1__ vds; int /*<<< orphan*/  magic; } ;
typedef  int grub_uint32_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int GRUB_UDF_LOG2_BLKSZ ; 
 size_t GRUB_UDF_MAX_PDS ; 
 scalar_t__ GRUB_UDF_MAX_PMS ; 
 scalar_t__ GRUB_UDF_PARTMAP_TYPE_1 ; 
 int /*<<< orphan*/  GRUB_UDF_STD_IDENT_BEA01 ; 
 int /*<<< orphan*/  GRUB_UDF_STD_IDENT_BOOT2 ; 
 int /*<<< orphan*/  GRUB_UDF_STD_IDENT_CD001 ; 
 int /*<<< orphan*/  GRUB_UDF_STD_IDENT_CDW02 ; 
 int /*<<< orphan*/  GRUB_UDF_STD_IDENT_NSR02 ; 
 int /*<<< orphan*/  GRUB_UDF_STD_IDENT_NSR03 ; 
 int /*<<< orphan*/  GRUB_UDF_STD_IDENT_TEA01 ; 
 scalar_t__ GRUB_UDF_TAG_IDENT_AVDP ; 
 scalar_t__ GRUB_UDF_TAG_IDENT_FSD ; 
 scalar_t__ GRUB_UDF_TAG_IDENT_LVD ; 
 scalar_t__ GRUB_UDF_TAG_IDENT_PD ; 
 scalar_t__ GRUB_UDF_TAG_IDENT_TD ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct grub_udf_vrs*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_udf_data*) ; 
 struct grub_udf_data* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct grub_udf_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* sblocklist ; 

__attribute__((used)) static struct grub_udf_data *
FUNC8 (grub_disk_t disk)
{
  struct grub_udf_data *data = 0;
  struct grub_udf_fileset root_fs;
  int *sblklist = sblocklist;
  grub_uint32_t block;
  int i;

  data = FUNC5 (sizeof (struct grub_udf_data));
  if (!data)
    return 0;

  data->disk = disk;

  /* Search for Volume Recognition Sequence (VRS).  */
  for (block = 16;; block++)
    {
      struct grub_udf_vrs vrs;

      if (FUNC2 (disk, block << GRUB_UDF_LOG2_BLKSZ, 0,
			  sizeof (struct grub_udf_vrs), &vrs))
	{
	  FUNC3 (GRUB_ERR_BAD_FS, "not an UDF filesystem");
	  goto fail;
	}

      if ((!FUNC6 (vrs.magic, GRUB_UDF_STD_IDENT_NSR03, 5)) ||
	  (!FUNC6 (vrs.magic, GRUB_UDF_STD_IDENT_NSR02, 5)))
	break;

      if ((FUNC6 (vrs.magic, GRUB_UDF_STD_IDENT_BEA01, 5)) &&
	  (FUNC6 (vrs.magic, GRUB_UDF_STD_IDENT_BOOT2, 5)) &&
	  (FUNC6 (vrs.magic, GRUB_UDF_STD_IDENT_CD001, 5)) &&
	  (FUNC6 (vrs.magic, GRUB_UDF_STD_IDENT_CDW02, 5)) &&
	  (FUNC6 (vrs.magic, GRUB_UDF_STD_IDENT_TEA01, 5)))
	{
	  FUNC3 (GRUB_ERR_BAD_FS, "not an UDF filesystem");
	  goto fail;
	}
    }

  /* Search for Anchor Volume Descriptor Pointer (AVDP).  */
  while (1)
    {
      struct grub_udf_avdp avdp;

      if (FUNC2 (disk, *sblklist << GRUB_UDF_LOG2_BLKSZ, 0,
			  sizeof (struct grub_udf_avdp), &avdp))
	{
	  FUNC3 (GRUB_ERR_BAD_FS, "not an UDF filesystem");
	  goto fail;
	}

      if (FUNC0 (avdp.tag.tag_ident) == GRUB_UDF_TAG_IDENT_AVDP)
	{
	  block = FUNC1 (avdp.vds.start);
	  break;
	}

      sblklist++;
      if (*sblklist == 0)
	{
	  FUNC3 (GRUB_ERR_BAD_FS, "not an UDF filesystem");
	  goto fail;
	}
    }

  data->npd = data->npm = 0;
  /* Locate Partition Descriptor (PD) and Logical Volume Descriptor (LVD).  */
  while (1)
    {
      struct grub_udf_tag tag;

      if (FUNC2 (disk, block << GRUB_UDF_LOG2_BLKSZ, 0,
			  sizeof (struct grub_udf_tag), &tag))
	{
	  FUNC3 (GRUB_ERR_BAD_FS, "not an UDF filesystem");
	  goto fail;
	}

      tag.tag_ident = FUNC0 (tag.tag_ident);
      if (tag.tag_ident == GRUB_UDF_TAG_IDENT_PD)
	{
	  if (data->npd >= GRUB_UDF_MAX_PDS)
	    {
	      FUNC3 (GRUB_ERR_BAD_FS, "too many PDs");
	      goto fail;
	    }

	  if (FUNC2 (disk, block << GRUB_UDF_LOG2_BLKSZ, 0,
			      sizeof (struct grub_udf_pd),
			      &data->pds[data->npd]))
	    {
	      FUNC3 (GRUB_ERR_BAD_FS, "not an UDF filesystem");
	      goto fail;
	    }

	  data->npd++;
	}
      else if (tag.tag_ident == GRUB_UDF_TAG_IDENT_LVD)
	{
	  int k;

	  struct grub_udf_partmap *ppm;

	  if (FUNC2 (disk, block << GRUB_UDF_LOG2_BLKSZ, 0,
			      sizeof (struct grub_udf_lvd),
			      &data->lvd))
	    {
	      FUNC3 (GRUB_ERR_BAD_FS, "not an UDF filesystem");
	      goto fail;
	    }

	  if (data->npm + FUNC1 (data->lvd.num_part_maps) > GRUB_UDF_MAX_PMS)
	    {
	      FUNC3 (GRUB_ERR_BAD_FS, "too many partition maps");
	      goto fail;
	    }

	  ppm = (struct grub_udf_partmap *) &data->lvd.part_maps;
	  for (k = FUNC1 (data->lvd.num_part_maps); k > 0; k--)
	    {
	      if (ppm->type != GRUB_UDF_PARTMAP_TYPE_1)
		{
		  FUNC3 (GRUB_ERR_BAD_FS, "partmap type not supported");
		  goto fail;
		}

	      data->pms[data->npm++] = ppm;
	      ppm = (struct grub_udf_partmap *) ((char *) ppm +
                                                 FUNC1 (ppm->length));
	    }
	}
      else if (tag.tag_ident > GRUB_UDF_TAG_IDENT_TD)
	{
	  FUNC3 (GRUB_ERR_BAD_FS, "invalid tag ident");
	  goto fail;
	}
      else if (tag.tag_ident == GRUB_UDF_TAG_IDENT_TD)
	break;

      block++;
    }

  for (i = 0; i < data->npm; i++)
    {
      int j;

      for (j = 0; j < data->npd; j++)
	if (data->pms[i]->type1.part_num == data->pds[j].part_num)
	  {
	    data->pms[i]->type1.part_num = j;
	    break;
	  }

      if (j == data->npd)
	{
	  FUNC3 (GRUB_ERR_BAD_FS, "can\'t find PD");
	  goto fail;
	}
    }

  block = FUNC7 (data,
			      data->lvd.root_fileset.block.part_ref,
			      data->lvd.root_fileset.block.block_num);

  if (grub_errno)
    goto fail;

  if (FUNC2 (disk, block << GRUB_UDF_LOG2_BLKSZ, 0,
		      sizeof (struct grub_udf_fileset), &root_fs))
    {
      FUNC3 (GRUB_ERR_BAD_FS, "not an UDF filesystem");
      goto fail;
    }

  if (FUNC0 (root_fs.tag.tag_ident) != GRUB_UDF_TAG_IDENT_FSD)
    {
      FUNC3 (GRUB_ERR_BAD_FS, "invalid fileset descriptor");
      goto fail;
    }

  data->root_icb = root_fs.root_icb;

  return data;

fail:
  FUNC4 (data);
  return 0;
}