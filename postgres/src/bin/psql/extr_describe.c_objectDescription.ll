; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_objectDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_objectDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@pset = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@objectDescription.translate_columns = internal constant [4 x i32] [i32 0, i32 0, i32 1, i32 0], align 16
@.str = private unnamed_addr constant [102 x i8] c"SELECT DISTINCT tt.nspname AS \22%s\22, tt.name AS \22%s\22, tt.object AS \22%s\22, d.description AS \22%s\22\0AFROM (\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.5 = private unnamed_addr constant [326 x i8] c"  SELECT pgc.oid as oid, pgc.tableoid AS tableoid,\0A  n.nspname as nspname,\0A  CAST(pgc.conname AS pg_catalog.text) as name,  CAST('%s' AS pg_catalog.text) as object\0A  FROM pg_catalog.pg_constraint pgc\0A    JOIN pg_catalog.pg_class c ON c.oid = pgc.conrelid\0A    LEFT JOIN pg_catalog.pg_namespace n     ON n.oid = c.relnamespace\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"table constraint\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"WHERE n.nspname <> 'pg_catalog'\0A      AND n.nspname <> 'information_schema'\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"pgc.conname\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"pg_catalog.pg_table_is_visible(c.oid)\00", align 1
@.str.11 = private unnamed_addr constant [335 x i8] c"UNION ALL\0A  SELECT pgc.oid as oid, pgc.tableoid AS tableoid,\0A  n.nspname as nspname,\0A  CAST(pgc.conname AS pg_catalog.text) as name,  CAST('%s' AS pg_catalog.text) as object\0A  FROM pg_catalog.pg_constraint pgc\0A    JOIN pg_catalog.pg_type t ON t.oid = pgc.contypid\0A    LEFT JOIN pg_catalog.pg_namespace n     ON n.oid = t.typnamespace\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"domain constraint\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"pg_catalog.pg_type_is_visible(t.oid)\00", align 1
@.str.14 = private unnamed_addr constant [315 x i8] c"UNION ALL\0A  SELECT o.oid as oid, o.tableoid as tableoid,\0A  n.nspname as nspname,\0A  CAST(o.opcname AS pg_catalog.text) as name,\0A  CAST('%s' AS pg_catalog.text) as object\0A  FROM pg_catalog.pg_opclass o\0A    JOIN pg_catalog.pg_am am ON o.opcmethod = am.oid\0A    JOIN pg_catalog.pg_namespace n ON n.oid = o.opcnamespace\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"operator class\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c"      AND n.nspname <> 'pg_catalog'\0A      AND n.nspname <> 'information_schema'\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"o.opcname\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"pg_catalog.pg_opclass_is_visible(o.oid)\00", align 1
@.str.19 = private unnamed_addr constant [328 x i8] c"UNION ALL\0A  SELECT opf.oid as oid, opf.tableoid as tableoid,\0A  n.nspname as nspname,\0A  CAST(opf.opfname AS pg_catalog.text) AS name,\0A  CAST('%s' AS pg_catalog.text) as object\0A  FROM pg_catalog.pg_opfamily opf\0A    JOIN pg_catalog.pg_am am ON opf.opfmethod = am.oid\0A    JOIN pg_catalog.pg_namespace n ON opf.opfnamespace = n.oid\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"operator family\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"opf.opfname\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"pg_catalog.pg_opfamily_is_visible(opf.oid)\00", align 1
@.str.23 = private unnamed_addr constant [358 x i8] c"UNION ALL\0A  SELECT r.oid as oid, r.tableoid as tableoid,\0A  n.nspname as nspname,\0A  CAST(r.rulename AS pg_catalog.text) as name,  CAST('%s' AS pg_catalog.text) as object\0A  FROM pg_catalog.pg_rewrite r\0A       JOIN pg_catalog.pg_class c ON c.oid = r.ev_class\0A       LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace\0A  WHERE r.rulename != '_RETURN'\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"r.rulename\00", align 1
@.str.26 = private unnamed_addr constant [323 x i8] c"UNION ALL\0A  SELECT t.oid as oid, t.tableoid as tableoid,\0A  n.nspname as nspname,\0A  CAST(t.tgname AS pg_catalog.text) as name,  CAST('%s' AS pg_catalog.text) as object\0A  FROM pg_catalog.pg_trigger t\0A       JOIN pg_catalog.pg_class c ON c.oid = t.tgrelid\0A       LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"t.tgname\00", align 1
@.str.29 = private unnamed_addr constant [115 x i8] c") AS tt\0A  JOIN pg_catalog.pg_description d ON (tt.oid = d.objoid AND tt.tableoid = d.classoid AND d.objsubid = 0)\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"ORDER BY 1, 2, 3;\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Object descriptions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @objectDescription(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 4) to i8*), i64 32, i1 false)
  %10 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %6)
  %11 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = call i32 @gettext_noop(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %17 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20, %2
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @processSQLNamePattern(i32 %26, %struct.TYPE_11__* %6, i8* %27, i32 %36, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %38 = call i32 @gettext_noop(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %39 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([335 x i8], [335 x i8]* @.str.11, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42, %34
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = icmp ne i8* %53, null
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ false, %47 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @processSQLNamePattern(i32 %48, %struct.TYPE_11__* %6, i8* %49, i32 %58, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %61 = icmp sge i32 %60, 80300
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = call i32 @gettext_noop(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %64 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([315 x i8], [315 x i8]* @.str.14, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67, %62
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @processSQLNamePattern(i32 %73, %struct.TYPE_11__* %6, i8* %74, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %56
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %78 = icmp sge i32 %77, 90200
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = call i32 @gettext_noop(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %81 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.19, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84, %79
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @processSQLNamePattern(i32 %90, %struct.TYPE_11__* %6, i8* %91, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %76
  %94 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %95 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([358 x i8], [358 x i8]* @.str.23, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %4, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98, %93
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @processSQLNamePattern(i32 %104, %struct.TYPE_11__* %6, i8* %105, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %107 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %108 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([323 x i8], [323 x i8]* @.str.26, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %103
  %112 = load i8*, i8** %4, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %111, %103
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %4, align 8
  %123 = icmp ne i8* %122, null
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %121, %116
  %126 = phi i1 [ false, %116 ], [ %124, %121 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @processSQLNamePattern(i32 %117, %struct.TYPE_11__* %6, i8* %118, i32 %127, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %129 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.29, i64 0, i64 0))
  %130 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32* @PSQLexec(i32 %132)
  store i32* %133, i32** %7, align 8
  %134 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %6)
  %135 = load i32*, i32** %7, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %152

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  store i32* null, i32** %139, align 8
  %140 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0))
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32 %140, i32* %141, align 4
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @objectDescription.translate_columns, i64 0, i64 0), i32** %143, align 8
  %144 = call i32 @lengthof(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @objectDescription.translate_columns, i64 0, i64 0))
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %144, i32* %145, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 2), align 8
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 1), align 4
  %149 = call i32 @printQuery(i32* %146, %struct.TYPE_10__* %8, i32 %147, i32 0, i32 %148)
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @PQclear(i32* %150)
  store i32 1, i32* %3, align 4
  br label %152

152:                                              ; preds = %138, %137
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_11__*, i8*, i32, ...) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_11__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @lengthof(i32*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_10__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
