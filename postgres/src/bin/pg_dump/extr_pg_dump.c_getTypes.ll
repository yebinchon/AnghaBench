; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTypes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i8*, i8* }
%struct.TYPE_23__ = type { i64, i32, i32, %struct.TYPE_24__, i8*, %struct.TYPE_25__*, i32*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_24__ = type { i8**, i32, i32, %struct.TYPE_29__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"t.typacl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"t.typowner\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"'T'\00", align 1
@.str.3 = private unnamed_addr constant [562 x i8] c"SELECT t.tableoid, t.oid, t.typname, t.typnamespace, %s AS typacl, %s AS rtypacl, %s AS inittypacl, %s AS initrtypacl, (%s t.typowner) AS rolname, t.typelem, t.typrelid, CASE WHEN t.typrelid = 0 THEN ' '::\22char\22 ELSE (SELECT relkind FROM pg_class WHERE oid = t.typrelid) END AS typrelkind, t.typtype, t.typisdefined, t.typname[0] = '_' AND t.typelem != 0 AND (SELECT typarray FROM pg_type te WHERE oid = t.typelem) = t.oid AS isarray FROM pg_type t LEFT JOIN pg_init_privs pip ON (t.oid = pip.objoid AND pip.classoid = 'pg_type'::regclass AND pip.objsubid = 0) \00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [425 x i8] c"SELECT tableoid, oid, typname, typnamespace, typacl, NULL as rtypacl, NULL AS inittypacl, NULL AS initrtypacl, (%s typowner) AS rolname, typelem, typrelid, CASE WHEN typrelid = 0 THEN ' '::\22char\22 ELSE (SELECT relkind FROM pg_class WHERE oid = typrelid) END AS typrelkind, typtype, typisdefined, typname[0] = '_' AND typelem != 0 AND (SELECT typarray FROM pg_type te WHERE oid = pg_type.typelem) = oid AS isarray FROM pg_type\00", align 1
@.str.5 = private unnamed_addr constant [433 x i8] c"SELECT tableoid, oid, typname, typnamespace, NULL AS typacl, NULL as rtypacl, NULL AS inittypacl, NULL AS initrtypacl, (%s typowner) AS rolname, typelem, typrelid, CASE WHEN typrelid = 0 THEN ' '::\22char\22 ELSE (SELECT relkind FROM pg_class WHERE oid = typrelid) END AS typrelkind, typtype, typisdefined, typname[0] = '_' AND typelem != 0 AND (SELECT typarray FROM pg_type te WHERE oid = pg_type.typelem) = oid AS isarray FROM pg_type\00", align 1
@.str.6 = private unnamed_addr constant [361 x i8] c"SELECT tableoid, oid, typname, typnamespace, NULL AS typacl, NULL as rtypacl, NULL AS inittypacl, NULL AS initrtypacl, (%s typowner) AS rolname, typelem, typrelid, CASE WHEN typrelid = 0 THEN ' '::\22char\22 ELSE (SELECT relkind FROM pg_class WHERE oid = typrelid) END AS typrelkind, typtype, typisdefined, typname[0] = '_' AND typelem != 0 AS isarray FROM pg_type\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"typname\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"typnamespace\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"typacl\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"rtypacl\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"inittypacl\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"initrtypacl\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"typelem\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"typrelid\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"typrelkind\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"typtype\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"typisdefined\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"isarray\00", align 1
@DO_TYPE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4
@DUMP_COMPONENT_DEFINITION = common dso_local global i32 0, align 4
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@TYPTYPE_BASE = common dso_local global i64 0, align 8
@TYPTYPE_RANGE = common dso_local global i64 0, align 8
@DO_SHELL_TYPE = common dso_local global i32 0, align 4
@nilCatalogId = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@DUMP_COMPONENT_NONE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [46 x i8] c"owner of data type \22%s\22 appears to be invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @getTypes(%struct.TYPE_28__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_26__*, align 8
  %28 = alloca %struct.TYPE_26__*, align 8
  %29 = alloca %struct.TYPE_26__*, align 8
  %30 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store i32* %1, i32** %4, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %5, align 8
  %34 = call %struct.TYPE_26__* (...) @createPQExpBuffer()
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %9, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 90600
  br i1 %38, label %39, label %75

39:                                               ; preds = %2
  %40 = call %struct.TYPE_26__* (...) @createPQExpBuffer()
  store %struct.TYPE_26__* %40, %struct.TYPE_26__** %27, align 8
  %41 = call %struct.TYPE_26__* (...) @createPQExpBuffer()
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %28, align 8
  %42 = call %struct.TYPE_26__* (...) @createPQExpBuffer()
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %29, align 8
  %43 = call %struct.TYPE_26__* (...) @createPQExpBuffer()
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %30, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @buildACLQueries(%struct.TYPE_26__* %44, %struct.TYPE_26__* %45, %struct.TYPE_26__* %46, %struct.TYPE_26__* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @username_subquery, align 4
  %66 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_26__* %52, i8* getelementptr inbounds ([562 x i8], [562 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %58, i32 %61, i32 %64, i32 %65)
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %68 = call i32 @destroyPQExpBuffer(%struct.TYPE_26__* %67)
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %70 = call i32 @destroyPQExpBuffer(%struct.TYPE_26__* %69)
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %72 = call i32 @destroyPQExpBuffer(%struct.TYPE_26__* %71)
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %74 = call i32 @destroyPQExpBuffer(%struct.TYPE_26__* %73)
  br label %99

75:                                               ; preds = %2
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 90200
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %82 = load i32, i32* @username_subquery, align 4
  %83 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_26__* %81, i8* getelementptr inbounds ([425 x i8], [425 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %98

84:                                               ; preds = %75
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 80300
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %91 = load i32, i32* @username_subquery, align 4
  %92 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_26__* %90, i8* getelementptr inbounds ([433 x i8], [433 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %97

93:                                               ; preds = %84
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %95 = load i32, i32* @username_subquery, align 4
  %96 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_26__* %94, i8* getelementptr inbounds ([361 x i8], [361 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %80
  br label %99

99:                                               ; preds = %98, %39
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %105 = call i32* @ExecuteSqlQuery(%struct.TYPE_28__* %100, i32 %103, i32 %104)
  store i32* %105, i32** %6, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @PQntuples(i32* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 144
  %111 = trunc i64 %110 to i32
  %112 = call i64 @pg_malloc(i32 %111)
  %113 = inttoptr i64 %112 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %113, %struct.TYPE_23__** %10, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @PQfnumber(i32* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %115, i32* %12, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @PQfnumber(i32* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i32 %117, i32* %13, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @PQfnumber(i32* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 %119, i32* %14, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @PQfnumber(i32* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i32 %121, i32* %15, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @PQfnumber(i32* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i32 %123, i32* %16, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @PQfnumber(i32* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store i32 %125, i32* %17, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @PQfnumber(i32* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store i32 %127, i32* %18, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @PQfnumber(i32* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i32 %129, i32* %19, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @PQfnumber(i32* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  store i32 %131, i32* %20, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @PQfnumber(i32* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  store i32 %133, i32* %21, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @PQfnumber(i32* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  store i32 %135, i32* %22, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @PQfnumber(i32* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  store i32 %137, i32* %23, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @PQfnumber(i32* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  store i32 %139, i32* %24, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @PQfnumber(i32* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  store i32 %141, i32* %25, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @PQfnumber(i32* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  store i32 %143, i32* %26, align 4
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %522, %99
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %525

148:                                              ; preds = %144
  %149 = load i32, i32* @DO_TYPE, align 4
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 4
  store i32 %149, i32* %155, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i8** @PQgetvalue(i32* %156, i32 %157, i32 %158)
  %160 = call i8* @atooid(i8** %159)
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 1
  store i8* %160, i8** %167, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %13, align 4
  %171 = call i8** @PQgetvalue(i32* %168, i32 %169, i32 %170)
  %172 = call i8* @atooid(i8** %171)
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  store i8* %172, i8** %179, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 3
  %185 = call i32 @AssignDumpId(%struct.TYPE_24__* %184)
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %14, align 4
  %189 = call i8** @PQgetvalue(i32* %186, i32 %187, i32 %188)
  %190 = call i8* @pg_strdup(i8** %189)
  %191 = bitcast i8* %190 to i8**
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 0
  store i8** %191, i8*** %197, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %15, align 4
  %202 = call i8** @PQgetvalue(i32* %199, i32 %200, i32 %201)
  %203 = call i8* @atooid(i8** %202)
  %204 = call i32 @findNamespace(%struct.TYPE_28__* %198, i8* %203)
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 2
  store i32 %204, i32* %210, align 4
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %20, align 4
  %214 = call i8** @PQgetvalue(i32* %211, i32 %212, i32 %213)
  %215 = call i8* @pg_strdup(i8** %214)
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 4
  store i8* %215, i8** %220, align 8
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %16, align 4
  %224 = call i8** @PQgetvalue(i32* %221, i32 %222, i32 %223)
  %225 = call i8* @pg_strdup(i8** %224)
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 14
  store i8* %225, i8** %230, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %17, align 4
  %234 = call i8** @PQgetvalue(i32* %231, i32 %232, i32 %233)
  %235 = call i8* @pg_strdup(i8** %234)
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 13
  store i8* %235, i8** %240, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %18, align 4
  %244 = call i8** @PQgetvalue(i32* %241, i32 %242, i32 %243)
  %245 = call i8* @pg_strdup(i8** %244)
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 12
  store i8* %245, i8** %250, align 8
  %251 = load i32*, i32** %6, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %19, align 4
  %254 = call i8** @PQgetvalue(i32* %251, i32 %252, i32 %253)
  %255 = call i8* @pg_strdup(i8** %254)
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 11
  store i8* %255, i8** %260, align 8
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %21, align 4
  %264 = call i8** @PQgetvalue(i32* %261, i32 %262, i32 %263)
  %265 = call i8* @atooid(i8** %264)
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 10
  store i8* %265, i8** %270, align 8
  %271 = load i32*, i32** %6, align 8
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %22, align 4
  %274 = call i8** @PQgetvalue(i32* %271, i32 %272, i32 %273)
  %275 = call i8* @atooid(i8** %274)
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 9
  store i8* %275, i8** %280, align 8
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* %23, align 4
  %284 = call i8** @PQgetvalue(i32* %281, i32 %282, i32 %283)
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 8
  store i8* %285, i8** %290, align 8
  %291 = load i32*, i32** %6, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* %24, align 4
  %294 = call i8** @PQgetvalue(i32* %291, i32 %292, i32 %293)
  %295 = load i8*, i8** %294, align 8
  %296 = ptrtoint i8* %295 to i64
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 0
  store i64 %296, i64* %301, align 8
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 5
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %306, align 8
  %307 = load i32*, i32** %6, align 8
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* %25, align 4
  %310 = call i8** @PQgetvalue(i32* %307, i32 %308, i32 %309)
  %311 = call i64 @strcmp(i8** %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %148
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %315 = load i32, i32* %8, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 1
  store i32 1, i32* %318, align 8
  br label %325

319:                                              ; preds = %148
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %321 = load i32, i32* %8, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  store i32 0, i32* %324, align 8
  br label %325

325:                                              ; preds = %319, %313
  %326 = load i32*, i32** %6, align 8
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* %26, align 4
  %329 = call i8** @PQgetvalue(i32* %326, i32 %327, i32 %328)
  %330 = call i64 @strcmp(i8** %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %325
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %334 = load i32, i32* %8, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 2
  store i32 1, i32* %337, align 4
  br label %344

338:                                              ; preds = %325
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 2
  store i32 0, i32* %343, align 4
  br label %344

344:                                              ; preds = %338, %332
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i64 %347
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %350 = call i32 @selectDumpableType(%struct.TYPE_23__* %348, %struct.TYPE_28__* %349)
  %351 = load i32*, i32** %6, align 8
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* %16, align 4
  %354 = call i64 @PQgetisnull(i32* %351, i32 %352, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %385

356:                                              ; preds = %344
  %357 = load i32*, i32** %6, align 8
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* %17, align 4
  %360 = call i64 @PQgetisnull(i32* %357, i32 %358, i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %385

362:                                              ; preds = %356
  %363 = load i32*, i32** %6, align 8
  %364 = load i32, i32* %8, align 4
  %365 = load i32, i32* %18, align 4
  %366 = call i64 @PQgetisnull(i32* %363, i32 %364, i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %385

368:                                              ; preds = %362
  %369 = load i32*, i32** %6, align 8
  %370 = load i32, i32* %8, align 4
  %371 = load i32, i32* %19, align 4
  %372 = call i64 @PQgetisnull(i32* %369, i32 %370, i32 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %385

374:                                              ; preds = %368
  %375 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %376 = xor i32 %375, -1
  %377 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %378 = load i32, i32* %8, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = and i32 %383, %376
  store i32 %384, i32* %382, align 8
  br label %385

385:                                              ; preds = %374, %368, %362, %356, %344
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %389, i32 0, i32 7
  store i64 0, i64* %390, align 8
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %392 = load i32, i32* %8, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 6
  store i32* null, i32** %395, align 8
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %397 = load i32, i32* %8, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @DUMP_COMPONENT_DEFINITION, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %422

406:                                              ; preds = %385
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %422

415:                                              ; preds = %406
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %417 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %418 = load i32, i32* %8, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i64 %419
  %421 = call i32 @getDomainConstraints(%struct.TYPE_28__* %416, %struct.TYPE_23__* %420)
  br label %422

422:                                              ; preds = %415, %406, %385
  %423 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %426, i32 0, i32 3
  %428 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @DUMP_COMPONENT_DEFINITION, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %503

433:                                              ; preds = %422
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @TYPTYPE_BASE, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %451, label %442

442:                                              ; preds = %433
  %443 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @TYPTYPE_RANGE, align 8
  %450 = icmp eq i64 %448, %449
  br i1 %450, label %451, label %503

451:                                              ; preds = %442, %433
  %452 = call i64 @pg_malloc(i32 48)
  %453 = inttoptr i64 %452 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %453, %struct.TYPE_25__** %11, align 8
  %454 = load i32, i32* @DO_SHELL_TYPE, align 4
  %455 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %456 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %456, i32 0, i32 4
  store i32 %454, i32* %457, align 8
  %458 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %459 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 3
  %461 = bitcast %struct.TYPE_29__* %460 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %461, i8* align 8 bitcast (%struct.TYPE_29__* @nilCatalogId to i8*), i64 16, i1 false)
  %462 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %463 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %462, i32 0, i32 0
  %464 = call i32 @AssignDumpId(%struct.TYPE_24__* %463)
  %465 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %468, i32 0, i32 3
  %470 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %469, i32 0, i32 0
  %471 = load i8**, i8*** %470, align 8
  %472 = call i8* @pg_strdup(i8** %471)
  %473 = bitcast i8* %472 to i8**
  %474 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %475 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %475, i32 0, i32 0
  store i8** %473, i8*** %476, align 8
  %477 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %478 = load i32, i32* %8, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %485 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %485, i32 0, i32 2
  store i32 %483, i32* %486, align 4
  %487 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %488 = load i32, i32* %8, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %487, i64 %489
  %491 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %492 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %491, i32 0, i32 1
  store %struct.TYPE_23__* %490, %struct.TYPE_23__** %492, align 8
  %493 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %494 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %495 = load i32, i32* %8, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %494, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %497, i32 0, i32 5
  store %struct.TYPE_25__* %493, %struct.TYPE_25__** %498, align 8
  %499 = load i32, i32* @DUMP_COMPONENT_NONE, align 4
  %500 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %501 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %501, i32 0, i32 1
  store i32 %499, i32* %502, align 8
  br label %503

503:                                              ; preds = %451, %442, %422
  %504 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %505 = load i32, i32* %8, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %507, i32 0, i32 4
  %509 = load i8*, i8** %508, align 8
  %510 = call i64 @strlen(i8* %509)
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %521

512:                                              ; preds = %503
  %513 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %514 = load i32, i32* %8, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %516, i32 0, i32 3
  %518 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %517, i32 0, i32 0
  %519 = load i8**, i8*** %518, align 8
  %520 = call i32 @pg_log_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i8** %519)
  br label %521

521:                                              ; preds = %512, %503
  br label %522

522:                                              ; preds = %521
  %523 = load i32, i32* %8, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %8, align 4
  br label %144

525:                                              ; preds = %144
  %526 = load i32, i32* %7, align 4
  %527 = load i32*, i32** %4, align 8
  store i32 %526, i32* %527, align 4
  %528 = load i32*, i32** %6, align 8
  %529 = call i32 @PQclear(i32* %528)
  %530 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %531 = call i32 @destroyPQExpBuffer(%struct.TYPE_26__* %530)
  %532 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  ret %struct.TYPE_23__* %532
}

declare dso_local %struct.TYPE_26__* @createPQExpBuffer(...) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_26__*, i8*, i32, ...) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_26__*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i8**) #1

declare dso_local i8** @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_24__*) #1

declare dso_local i8* @pg_strdup(i8**) #1

declare dso_local i32 @findNamespace(%struct.TYPE_28__*, i8*) #1

declare dso_local i64 @strcmp(i8**, i8*) #1

declare dso_local i32 @selectDumpableType(%struct.TYPE_23__*, %struct.TYPE_28__*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @getDomainConstraints(%struct.TYPE_28__*, %struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8**) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
