#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  objectSubId; } ;
struct TYPE_10__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ ObjectAddress ;

/* Variables and functions */
#define  OCLASS_AM 165 
#define  OCLASS_AMOP 164 
#define  OCLASS_AMPROC 163 
#define  OCLASS_CAST 162 
#define  OCLASS_CLASS 161 
#define  OCLASS_COLLATION 160 
#define  OCLASS_CONSTRAINT 159 
#define  OCLASS_CONVERSION 158 
#define  OCLASS_DATABASE 157 
#define  OCLASS_DEFACL 156 
#define  OCLASS_DEFAULT 155 
#define  OCLASS_EVENT_TRIGGER 154 
#define  OCLASS_EXTENSION 153 
#define  OCLASS_FDW 152 
#define  OCLASS_FOREIGN_SERVER 151 
#define  OCLASS_LANGUAGE 150 
#define  OCLASS_LARGEOBJECT 149 
#define  OCLASS_OPCLASS 148 
#define  OCLASS_OPERATOR 147 
#define  OCLASS_OPFAMILY 146 
#define  OCLASS_POLICY 145 
#define  OCLASS_PROC 144 
#define  OCLASS_PUBLICATION 143 
#define  OCLASS_PUBLICATION_REL 142 
#define  OCLASS_REWRITE 141 
#define  OCLASS_ROLE 140 
#define  OCLASS_SCHEMA 139 
#define  OCLASS_STATISTIC_EXT 138 
#define  OCLASS_SUBSCRIPTION 137 
#define  OCLASS_TBLSPACE 136 
#define  OCLASS_TRANSFORM 135 
#define  OCLASS_TRIGGER 134 
#define  OCLASS_TSCONFIG 133 
#define  OCLASS_TSDICT 132 
#define  OCLASS_TSPARSER 131 
#define  OCLASS_TSTEMPLATE 130 
#define  OCLASS_TYPE 129 
#define  OCLASS_USER_MAPPING 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

char *
FUNC6(const ObjectAddress *object)
{
	StringInfoData buffer;

	FUNC5(&buffer);

	switch (FUNC2(object))
	{
		case OCLASS_CLASS:
			FUNC4(&buffer, object->objectId,
									   object->objectSubId);
			break;

		case OCLASS_PROC:
			FUNC3(&buffer, object->objectId);
			break;

		case OCLASS_TYPE:
			FUNC0(&buffer, "type");
			break;

		case OCLASS_CAST:
			FUNC0(&buffer, "cast");
			break;

		case OCLASS_COLLATION:
			FUNC0(&buffer, "collation");
			break;

		case OCLASS_CONSTRAINT:
			FUNC1(&buffer, object->objectId);
			break;

		case OCLASS_CONVERSION:
			FUNC0(&buffer, "conversion");
			break;

		case OCLASS_DEFAULT:
			FUNC0(&buffer, "default value");
			break;

		case OCLASS_LANGUAGE:
			FUNC0(&buffer, "language");
			break;

		case OCLASS_LARGEOBJECT:
			FUNC0(&buffer, "large object");
			break;

		case OCLASS_OPERATOR:
			FUNC0(&buffer, "operator");
			break;

		case OCLASS_OPCLASS:
			FUNC0(&buffer, "operator class");
			break;

		case OCLASS_OPFAMILY:
			FUNC0(&buffer, "operator family");
			break;

		case OCLASS_AM:
			FUNC0(&buffer, "access method");
			break;

		case OCLASS_AMOP:
			FUNC0(&buffer, "operator of access method");
			break;

		case OCLASS_AMPROC:
			FUNC0(&buffer, "function of access method");
			break;

		case OCLASS_REWRITE:
			FUNC0(&buffer, "rule");
			break;

		case OCLASS_TRIGGER:
			FUNC0(&buffer, "trigger");
			break;

		case OCLASS_SCHEMA:
			FUNC0(&buffer, "schema");
			break;

		case OCLASS_STATISTIC_EXT:
			FUNC0(&buffer, "statistics object");
			break;

		case OCLASS_TSPARSER:
			FUNC0(&buffer, "text search parser");
			break;

		case OCLASS_TSDICT:
			FUNC0(&buffer, "text search dictionary");
			break;

		case OCLASS_TSTEMPLATE:
			FUNC0(&buffer, "text search template");
			break;

		case OCLASS_TSCONFIG:
			FUNC0(&buffer, "text search configuration");
			break;

		case OCLASS_ROLE:
			FUNC0(&buffer, "role");
			break;

		case OCLASS_DATABASE:
			FUNC0(&buffer, "database");
			break;

		case OCLASS_TBLSPACE:
			FUNC0(&buffer, "tablespace");
			break;

		case OCLASS_FDW:
			FUNC0(&buffer, "foreign-data wrapper");
			break;

		case OCLASS_FOREIGN_SERVER:
			FUNC0(&buffer, "server");
			break;

		case OCLASS_USER_MAPPING:
			FUNC0(&buffer, "user mapping");
			break;

		case OCLASS_DEFACL:
			FUNC0(&buffer, "default acl");
			break;

		case OCLASS_EXTENSION:
			FUNC0(&buffer, "extension");
			break;

		case OCLASS_EVENT_TRIGGER:
			FUNC0(&buffer, "event trigger");
			break;

		case OCLASS_POLICY:
			FUNC0(&buffer, "policy");
			break;

		case OCLASS_PUBLICATION:
			FUNC0(&buffer, "publication");
			break;

		case OCLASS_PUBLICATION_REL:
			FUNC0(&buffer, "publication relation");
			break;

		case OCLASS_SUBSCRIPTION:
			FUNC0(&buffer, "subscription");
			break;

		case OCLASS_TRANSFORM:
			FUNC0(&buffer, "transform");
			break;

			/*
			 * There's intentionally no default: case here; we want the
			 * compiler to warn if a new OCLASS hasn't been handled above.
			 */
	}

	return buffer.data;
}