#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {char* name; char* org_name; char* table; char* org_table; char* def; char* db; int /*<<< orphan*/  decimals; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; int /*<<< orphan*/  charsetnr; int /*<<< orphan*/  length; int /*<<< orphan*/  max_length; int /*<<< orphan*/  db_length; int /*<<< orphan*/  def_length; int /*<<< orphan*/  org_table_length; int /*<<< orphan*/  table_length; int /*<<< orphan*/  org_name_length; int /*<<< orphan*/  name_length; int /*<<< orphan*/  sname; } ;
typedef  TYPE_1__ MYSQL_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(zval *value, const MYSQL_FIELD *field)
{
#ifdef MYSQLI_USE_MYSQLND
	add_property_str(value, "name", zend_string_copy(field->sname));
#else
	FUNC3(value, "name",(field->name ? field->name : ""), field->name_length);
#endif

	FUNC3(value, "orgname", (field->org_name ? field->org_name : ""), field->org_name_length);
	FUNC3(value, "table", (field->table ? field->table : ""), field->table_length);
	FUNC3(value, "orgtable", (field->org_table ? field->org_table : ""), field->org_table_length);
	FUNC3(value, "def", (field->def ? field->def : ""), field->def_length);
	FUNC3(value, "db", (field->db ? field->db : ""), field->db_length);

	/* FIXME: manually set the catalog to "def" due to bug in
	 * libmysqlclient which does not initialize field->catalog
	 * and in addition, the catalog is always be "def"
	 */
	FUNC2(value, "catalog", "def");

	FUNC0(value, "max_length", field->max_length);
	FUNC0(value, "length", field->length);
	FUNC0(value, "charsetnr", field->charsetnr);
	FUNC0(value, "flags", field->flags);
	FUNC0(value, "type", field->type);
	FUNC0(value, "decimals", field->decimals);
}