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

/* Variables and functions */
 char* PG_VERSION ; 
 char* bin_path ; 
 char* bki_file ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* conf_file ; 
 scalar_t__ debug ; 
 char* desc_file ; 
 char* dictionary_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* features_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 char* hba_file ; 
 char* ident_file ; 
 char* info_schema_file ; 
 char* pg_data ; 
 int /*<<< orphan*/  FUNC3 (char**,char*) ; 
 char* share_path ; 
 char* shdesc_file ; 
 scalar_t__ show_setting ; 
 int /*<<< orphan*/  stderr ; 
 char* system_views_file ; 
 char* username ; 

void
FUNC4(void)
{
	FUNC3(&bki_file, "postgres.bki");
	FUNC3(&desc_file, "postgres.description");
	FUNC3(&shdesc_file, "postgres.shdescription");
	FUNC3(&hba_file, "pg_hba.conf.sample");
	FUNC3(&ident_file, "pg_ident.conf.sample");
	FUNC3(&conf_file, "postgresql.conf.sample");
	FUNC3(&dictionary_file, "snowball_create.sql");
	FUNC3(&info_schema_file, "information_schema.sql");
	FUNC3(&features_file, "sql_features.txt");
	FUNC3(&system_views_file, "system_views.sql");

	if (show_setting || debug)
	{
		FUNC2(stderr,
				"VERSION=%s\n"
				"PGDATA=%s\nshare_path=%s\nPGPATH=%s\n"
				"POSTGRES_SUPERUSERNAME=%s\nPOSTGRES_BKI=%s\n"
				"POSTGRES_DESCR=%s\nPOSTGRES_SHDESCR=%s\n"
				"POSTGRESQL_CONF_SAMPLE=%s\n"
				"PG_HBA_SAMPLE=%s\nPG_IDENT_SAMPLE=%s\n",
				PG_VERSION,
				pg_data, share_path, bin_path,
				username, bki_file,
				desc_file, shdesc_file,
				conf_file,
				hba_file, ident_file);
		if (show_setting)
			FUNC1(0);
	}

	FUNC0(bki_file);
	FUNC0(desc_file);
	FUNC0(shdesc_file);
	FUNC0(hba_file);
	FUNC0(ident_file);
	FUNC0(conf_file);
	FUNC0(dictionary_file);
	FUNC0(info_schema_file);
	FUNC0(features_file);
	FUNC0(system_views_file);
}