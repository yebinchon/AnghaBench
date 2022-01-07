; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, %struct.TYPE_24__*, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i8, i32, i32, i32, i32*, i8*, i32*, %struct.TYPE_18__, i32*, i8*, i8*, i32*, i32*, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_22__*, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_26__ = type { i32 }

@DUMP_COMPONENT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"reading triggers for table \22%s.%s\22\00", align 1
@.str.1 = private unnamed_addr constant [217 x i8] c"SELECT tgname, tgfoid::pg_catalog.regproc AS tgfname, pg_catalog.pg_get_triggerdef(oid, false) AS tgdef, tgenabled, tableoid, oid FROM pg_catalog.pg_trigger t WHERE tgrelid = '%u'::pg_catalog.oid AND NOT tgisinternal\00", align 1
@.str.2 = private unnamed_addr constant [321 x i8] c"SELECT tgname, tgfoid::pg_catalog.regproc AS tgfname, tgtype, tgnargs, tgargs, tgenabled, tgisconstraint, tgconstrname, tgdeferrable, tgconstrrelid, tginitdeferred, tableoid, oid, tgconstrrelid::pg_catalog.regclass AS tgconstrrelname FROM pg_catalog.pg_trigger t WHERE tgrelid = '%u'::pg_catalog.oid AND tgconstraint = 0\00", align 1
@.str.3 = private unnamed_addr constant [561 x i8] c"SELECT tgname, tgfoid::pg_catalog.regproc AS tgfname, tgtype, tgnargs, tgargs, tgenabled, tgisconstraint, tgconstrname, tgdeferrable, tgconstrrelid, tginitdeferred, tableoid, oid, tgconstrrelid::pg_catalog.regclass AS tgconstrrelname FROM pg_catalog.pg_trigger t WHERE tgrelid = '%u'::pg_catalog.oid AND (NOT tgisconstraint  OR NOT EXISTS  (SELECT 1 FROM pg_catalog.pg_depend d    JOIN pg_catalog.pg_constraint c ON (d.refclassid = c.tableoid AND d.refobjid = c.oid)    WHERE d.classid = t.tableoid AND d.objid = t.oid AND d.deptype = 'i' AND c.contype = 'f'))\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"tgname\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"tgfname\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"tgtype\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"tgnargs\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"tgargs\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"tgisconstraint\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"tgconstrname\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"tgconstrrelid\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"tgconstrrelname\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"tgenabled\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"tgdeferrable\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"tginitdeferred\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"tgdef\00", align 1
@DO_TRIGGER = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [104 x i8] c"query produced null referenced table name for foreign key trigger \22%s\22 on table \22%s\22 (OID of table: %u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getTriggers(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i32 %2, i32* %6, align 4
  %29 = call %struct.TYPE_26__* (...) @createPQExpBuffer()
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %9, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %489, %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %492

34:                                               ; preds = %30
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i64 %37
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %28, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DUMP_COMPONENT_DEFINITION, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43, %34
  br label %489

52:                                               ; preds = %43
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pg_log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63)
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %66 = call i32 @resetPQExpBuffer(%struct.TYPE_26__* %65)
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 90000
  br i1 %70, label %71, label %79

71:                                               ; preds = %52
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @appendPQExpBuffer(%struct.TYPE_26__* %72, i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %101

79:                                               ; preds = %52
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 80300
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @appendPQExpBuffer(%struct.TYPE_26__* %85, i8* getelementptr inbounds ([321 x i8], [321 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %100

92:                                               ; preds = %79
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @appendPQExpBuffer(%struct.TYPE_26__* %93, i8* getelementptr inbounds ([561 x i8], [561 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %92, %84
  br label %101

101:                                              ; preds = %100, %71
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %107 = call i32* @ExecuteSqlQuery(%struct.TYPE_27__* %102, i32 %105, i32 %106)
  store i32* %107, i32** %10, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @PQntuples(i32* %108)
  store i32 %109, i32* %27, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @PQfnumber(i32* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %111, i32* %12, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @PQfnumber(i32* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %113, i32* %13, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @PQfnumber(i32* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %115, i32* %14, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @PQfnumber(i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 %117, i32* %15, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @PQfnumber(i32* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 %119, i32* %16, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @PQfnumber(i32* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 %121, i32* %17, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @PQfnumber(i32* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 %123, i32* %18, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @PQfnumber(i32* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32 %125, i32* %19, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @PQfnumber(i32* %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 %127, i32* %20, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @PQfnumber(i32* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32 %129, i32* %21, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @PQfnumber(i32* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i32 %131, i32* %22, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @PQfnumber(i32* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  store i32 %133, i32* %23, align 4
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @PQfnumber(i32* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32 %135, i32* %24, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @PQfnumber(i32* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i32 %137, i32* %25, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @PQfnumber(i32* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  store i32 %139, i32* %26, align 4
  %140 = load i32, i32* %27, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 128
  %143 = trunc i64 %142 to i32
  %144 = call i64 @pg_malloc(i32 %143)
  %145 = inttoptr i64 %144 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %145, %struct.TYPE_24__** %11, align 8
  %146 = load i32, i32* %27, align 4
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 2
  store %struct.TYPE_24__* %149, %struct.TYPE_24__** %151, align 8
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %483, %101
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %27, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %486

156:                                              ; preds = %152
  %157 = load i32, i32* @DO_TRIGGER, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 3
  store i32 %157, i32* %163, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i8* @PQgetvalue(i32* %164, i32 %165, i32 %166)
  %168 = call i8* @atooid(i8* %167)
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  store i8* %168, i8** %175, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i8* @PQgetvalue(i32* %176, i32 %177, i32 %178)
  %180 = call i8* @atooid(i8* %179)
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  store i8* %180, i8** %187, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 7
  %193 = call i32 @AssignDumpId(%struct.TYPE_18__* %192)
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i8* @PQgetvalue(i32* %194, i32 %195, i32 %196)
  %198 = call i8* @pg_strdup(i8* %197)
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  store i8* %198, i8** %204, align 8
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %207, align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 1
  store %struct.TYPE_22__* %208, %struct.TYPE_22__** %214, align 8
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 13
  store %struct.TYPE_25__* %215, %struct.TYPE_25__** %220, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %23, align 4
  %224 = call i8* @PQgetvalue(i32* %221, i32 %222, i32 %223)
  %225 = load i8, i8* %224, align 1
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  store i8 %225, i8* %230, align 8
  %231 = load i32, i32* %26, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %296

233:                                              ; preds = %156
  %234 = load i32*, i32** %10, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %26, align 4
  %237 = call i8* @PQgetvalue(i32* %234, i32 %235, i32 %236)
  %238 = call i8* @pg_strdup(i8* %237)
  %239 = bitcast i8* %238 to i32*
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 12
  store i32* %239, i32** %244, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 11
  store i32* null, i32** %249, align 8
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 10
  store i8* null, i8** %254, align 8
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 9
  store i8* null, i8** %259, align 8
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 8
  store i32* null, i32** %264, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 1
  store i32 0, i32* %269, align 4
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 2
  store i32 0, i32* %274, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 3
  store i32 0, i32* %279, align 4
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 6
  store i32* null, i32** %284, align 8
  %285 = load i8*, i8** @InvalidOid, align 8
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 5
  store i8* %285, i8** %290, align 8
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 4
  store i32* null, i32** %295, align 8
  br label %482

296:                                              ; preds = %156
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 12
  store i32* null, i32** %301, align 8
  %302 = load i32*, i32** %10, align 8
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %15, align 4
  %305 = call i8* @PQgetvalue(i32* %302, i32 %303, i32 %304)
  %306 = call i8* @pg_strdup(i8* %305)
  %307 = bitcast i8* %306 to i32*
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 11
  store i32* %307, i32** %312, align 8
  %313 = load i32*, i32** %10, align 8
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* %16, align 4
  %316 = call i8* @PQgetvalue(i32* %313, i32 %314, i32 %315)
  %317 = call i8* @atoi(i8* %316)
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %319 = load i32, i32* %8, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 10
  store i8* %317, i8** %322, align 8
  %323 = load i32*, i32** %10, align 8
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* %17, align 4
  %326 = call i8* @PQgetvalue(i32* %323, i32 %324, i32 %325)
  %327 = call i8* @atoi(i8* %326)
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 9
  store i8* %327, i8** %332, align 8
  %333 = load i32*, i32** %10, align 8
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* %18, align 4
  %336 = call i8* @PQgetvalue(i32* %333, i32 %334, i32 %335)
  %337 = call i8* @pg_strdup(i8* %336)
  %338 = bitcast i8* %337 to i32*
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 8
  store i32* %338, i32** %343, align 8
  %344 = load i32*, i32** %10, align 8
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* %19, align 4
  %347 = call i8* @PQgetvalue(i32* %344, i32 %345, i32 %346)
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 116
  %351 = zext i1 %350 to i32
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %353 = load i32, i32* %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 1
  store i32 %351, i32* %356, align 4
  %357 = load i32*, i32** %10, align 8
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* %24, align 4
  %360 = call i8* @PQgetvalue(i32* %357, i32 %358, i32 %359)
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp eq i32 %362, 116
  %364 = zext i1 %363 to i32
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 2
  store i32 %364, i32* %369, align 8
  %370 = load i32*, i32** %10, align 8
  %371 = load i32, i32* %8, align 4
  %372 = load i32, i32* %25, align 4
  %373 = call i8* @PQgetvalue(i32* %370, i32 %371, i32 %372)
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp eq i32 %375, 116
  %377 = zext i1 %376 to i32
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %379 = load i32, i32* %8, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 3
  store i32 %377, i32* %382, align 4
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %384 = load i32, i32* %8, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %464

390:                                              ; preds = %296
  %391 = load i32*, i32** %10, align 8
  %392 = load i32, i32* %8, align 4
  %393 = load i32, i32* %20, align 4
  %394 = call i8* @PQgetvalue(i32* %391, i32 %392, i32 %393)
  %395 = call i8* @pg_strdup(i8* %394)
  %396 = bitcast i8* %395 to i32*
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i32 0, i32 6
  store i32* %396, i32** %401, align 8
  %402 = load i32*, i32** %10, align 8
  %403 = load i32, i32* %8, align 4
  %404 = load i32, i32* %21, align 4
  %405 = call i8* @PQgetvalue(i32* %402, i32 %403, i32 %404)
  %406 = call i8* @atooid(i8* %405)
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %410, i32 0, i32 5
  store i8* %406, i8** %411, align 8
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %415, i32 0, i32 5
  %417 = load i8*, i8** %416, align 8
  %418 = call i64 @OidIsValid(i8* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %457

420:                                              ; preds = %390
  %421 = load i32*, i32** %10, align 8
  %422 = load i32, i32* %8, align 4
  %423 = load i32, i32* %22, align 4
  %424 = call i64 @PQgetisnull(i32* %421, i32 %422, i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %445

426:                                              ; preds = %420
  %427 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %428 = load i32, i32* %8, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %430, i32 0, i32 7
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 0
  %433 = load i8*, i8** %432, align 8
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %435 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %441, i32 0, i32 5
  %443 = load i8*, i8** %442, align 8
  %444 = call i32 @fatal(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.19, i64 0, i64 0), i8* %433, i32 %437, i8* %443)
  br label %445

445:                                              ; preds = %426, %420
  %446 = load i32*, i32** %10, align 8
  %447 = load i32, i32* %8, align 4
  %448 = load i32, i32* %22, align 4
  %449 = call i8* @PQgetvalue(i32* %446, i32 %447, i32 %448)
  %450 = call i8* @pg_strdup(i8* %449)
  %451 = bitcast i8* %450 to i32*
  %452 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %453 = load i32, i32* %8, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %455, i32 0, i32 4
  store i32* %451, i32** %456, align 8
  br label %463

457:                                              ; preds = %390
  %458 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %461, i32 0, i32 4
  store i32* null, i32** %462, align 8
  br label %463

463:                                              ; preds = %457, %445
  br label %481

464:                                              ; preds = %296
  %465 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %468, i32 0, i32 6
  store i32* null, i32** %469, align 8
  %470 = load i8*, i8** @InvalidOid, align 8
  %471 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %472 = load i32, i32* %8, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %474, i32 0, i32 5
  store i8* %470, i8** %475, align 8
  %476 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %477 = load i32, i32* %8, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %479, i32 0, i32 4
  store i32* null, i32** %480, align 8
  br label %481

481:                                              ; preds = %464, %463
  br label %482

482:                                              ; preds = %481, %233
  br label %483

483:                                              ; preds = %482
  %484 = load i32, i32* %8, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %8, align 4
  br label %152

486:                                              ; preds = %152
  %487 = load i32*, i32** %10, align 8
  %488 = call i32 @PQclear(i32* %487)
  br label %489

489:                                              ; preds = %486, %51
  %490 = load i32, i32* %7, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %7, align 4
  br label %30

492:                                              ; preds = %30
  %493 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %494 = call i32 @destroyPQExpBuffer(%struct.TYPE_26__* %493)
  ret void
}

declare dso_local %struct.TYPE_26__* @createPQExpBuffer(...) #1

declare dso_local i32 @pg_log_info(i8*, i32, i32) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_26__*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_18__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @OidIsValid(i8*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @fatal(i8*, i8*, i32, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
