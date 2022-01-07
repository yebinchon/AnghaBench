; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getPolicies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getPolicies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i32, i8*, %struct.TYPE_23__*, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i8*, i8, i32, i32*, i32*, i32*, %struct.TYPE_19__, %struct.TYPE_25__* }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_23__*, %struct.TYPE_22__, i8* }
%struct.TYPE_22__ = type { i8*, i8* }

@DUMP_COMPONENT_POLICY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"reading row security enabled for table \22%s.%s\22\00", align 1
@DO_POLICY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"reading policies for table \22%s.%s\22\00", align 1
@.str.2 = private unnamed_addr constant [452 x i8] c"SELECT oid, tableoid, pol.polname, pol.polcmd, pol.polpermissive, CASE WHEN pol.polroles = '{0}' THEN NULL ELSE    pg_catalog.array_to_string(ARRAY(SELECT pg_catalog.quote_ident(rolname) from pg_catalog.pg_roles WHERE oid = ANY(pol.polroles)), ', ') END AS polroles, pg_catalog.pg_get_expr(pol.polqual, pol.polrelid) AS polqual, pg_catalog.pg_get_expr(pol.polwithcheck, pol.polrelid) AS polwithcheck FROM pg_catalog.pg_policy pol WHERE polrelid = '%u'\00", align 1
@.str.3 = private unnamed_addr constant [455 x i8] c"SELECT oid, tableoid, pol.polname, pol.polcmd, 't' as polpermissive, CASE WHEN pol.polroles = '{0}' THEN NULL ELSE    pg_catalog.array_to_string(ARRAY(SELECT pg_catalog.quote_ident(rolname) from pg_catalog.pg_roles WHERE oid = ANY(pol.polroles)), ', ') END AS polroles, pg_catalog.pg_get_expr(pol.polqual, pol.polrelid) AS polqual, pg_catalog.pg_get_expr(pol.polwithcheck, pol.polrelid) AS polwithcheck FROM pg_catalog.pg_policy pol WHERE polrelid = '%u'\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"polname\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"polcmd\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"polpermissive\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"polroles\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"polqual\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"polwithcheck\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getPolicies(%struct.TYPE_28__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 90500
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %374

27:                                               ; preds = %3
  %28 = call %struct.TYPE_27__* (...) @createPQExpBuffer()
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %7, align 8
  store i32 0, i32* %18, align 4
  br label %29

29:                                               ; preds = %368, %27
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %371

33:                                               ; preds = %29
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = load i32, i32* %18, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i64 %36
  store %struct.TYPE_25__* %37, %struct.TYPE_25__** %21, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DUMP_COMPONENT_POLICY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %368

46:                                               ; preds = %33
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @pg_log_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %57)
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %115

63:                                               ; preds = %46
  %64 = call %struct.TYPE_26__* @pg_malloc(i32 88)
  store %struct.TYPE_26__* %64, %struct.TYPE_26__** %9, align 8
  %65 = load i8*, i8** @DO_POLICY, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 3
  store i8* %65, i8** %68, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  store i8* null, i8** %72, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  store i8* %77, i8** %81, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 6
  %84 = call i32 @AssignDumpId(%struct.TYPE_19__* %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %91, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @pg_strdup(i8* %95)
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 7
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %102, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  store i8* null, i8** %104, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 1
  store i8 0, i8* %106, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 2
  store i32 0, i32* %108, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 5
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 4
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 3
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %63, %46
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @pg_log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %122, i8* %126)
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %129 = call i32 @resetPQExpBuffer(%struct.TYPE_27__* %128)
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp sge i32 %132, 100000
  br i1 %133, label %134, label %142

134:                                              ; preds = %115
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @appendPQExpBuffer(%struct.TYPE_27__* %135, i8* getelementptr inbounds ([452 x i8], [452 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  br label %150

142:                                              ; preds = %115
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @appendPQExpBuffer(%struct.TYPE_27__* %143, i8* getelementptr inbounds ([455 x i8], [455 x i8]* @.str.3, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %142, %134
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %156 = call i32* @ExecuteSqlQuery(%struct.TYPE_28__* %151, i32 %154, i32 %155)
  store i32* %156, i32** %8, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = call i32 @PQntuples(i32* %157)
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %20, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load i32*, i32** %8, align 8
  %163 = call i32 @PQclear(i32* %162)
  br label %368

164:                                              ; preds = %150
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @PQfnumber(i32* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %166, i32* %10, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @PQfnumber(i32* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %168, i32* %11, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @PQfnumber(i32* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %170, i32* %12, align 4
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @PQfnumber(i32* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %172, i32* %13, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @PQfnumber(i32* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 %174, i32* %14, align 4
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @PQfnumber(i32* %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 %176, i32* %15, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @PQfnumber(i32* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %178, i32* %16, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @PQfnumber(i32* %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 %182, 88
  %184 = trunc i64 %183 to i32
  %185 = call %struct.TYPE_26__* @pg_malloc(i32 %184)
  store %struct.TYPE_26__* %185, %struct.TYPE_26__** %9, align 8
  store i32 0, i32* %19, align 4
  br label %186

186:                                              ; preds = %362, %164
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %365

190:                                              ; preds = %186
  %191 = load i8*, i8** @DO_POLICY, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 3
  store i8* %191, i8** %197, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i8* @PQgetvalue(i32* %198, i32 %199, i32 %200)
  %202 = call i8* @atooid(i8* %201)
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  store i8* %202, i8** %209, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i8* @PQgetvalue(i32* %210, i32 %211, i32 %212)
  %214 = call i8* @atooid(i8* %213)
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  store i8* %214, i8** %221, align 8
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 6
  %227 = call i32 @AssignDumpId(%struct.TYPE_19__* %226)
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %230, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 1
  store %struct.TYPE_23__* %231, %struct.TYPE_23__** %237, align 8
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 7
  store %struct.TYPE_25__* %238, %struct.TYPE_25__** %243, align 8
  %244 = load i32*, i32** %8, align 8
  %245 = load i32, i32* %19, align 4
  %246 = load i32, i32* %12, align 4
  %247 = call i8* @PQgetvalue(i32* %244, i32 %245, i32 %246)
  %248 = call i8* @pg_strdup(i8* %247)
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 0
  store i8* %248, i8** %253, align 8
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i8* @pg_strdup(i8* %259)
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %262 = load i32, i32* %19, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 6
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  store i8* %260, i8** %266, align 8
  %267 = load i32*, i32** %8, align 8
  %268 = load i32, i32* %19, align 4
  %269 = load i32, i32* %13, align 4
  %270 = call i8* @PQgetvalue(i32* %267, i32 %268, i32 %269)
  %271 = load i8, i8* %270, align 1
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %273 = load i32, i32* %19, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 1
  store i8 %271, i8* %276, align 8
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %14, align 4
  %280 = call i8* @PQgetvalue(i32* %277, i32 %278, i32 %279)
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 116
  %284 = zext i1 %283 to i32
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %286 = load i32, i32* %19, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 2
  store i32 %284, i32* %289, align 4
  %290 = load i32*, i32** %8, align 8
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %15, align 4
  %293 = call i64 @PQgetisnull(i32* %290, i32 %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %190
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %297 = load i32, i32* %19, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 5
  store i32* null, i32** %300, align 8
  br label %313

301:                                              ; preds = %190
  %302 = load i32*, i32** %8, align 8
  %303 = load i32, i32* %19, align 4
  %304 = load i32, i32* %15, align 4
  %305 = call i8* @PQgetvalue(i32* %302, i32 %303, i32 %304)
  %306 = call i8* @pg_strdup(i8* %305)
  %307 = bitcast i8* %306 to i32*
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %309 = load i32, i32* %19, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 5
  store i32* %307, i32** %312, align 8
  br label %313

313:                                              ; preds = %301, %295
  %314 = load i32*, i32** %8, align 8
  %315 = load i32, i32* %19, align 4
  %316 = load i32, i32* %16, align 4
  %317 = call i64 @PQgetisnull(i32* %314, i32 %315, i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %313
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %321 = load i32, i32* %19, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 4
  store i32* null, i32** %324, align 8
  br label %337

325:                                              ; preds = %313
  %326 = load i32*, i32** %8, align 8
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %16, align 4
  %329 = call i8* @PQgetvalue(i32* %326, i32 %327, i32 %328)
  %330 = call i8* @pg_strdup(i8* %329)
  %331 = bitcast i8* %330 to i32*
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %333 = load i32, i32* %19, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 4
  store i32* %331, i32** %336, align 8
  br label %337

337:                                              ; preds = %325, %319
  %338 = load i32*, i32** %8, align 8
  %339 = load i32, i32* %19, align 4
  %340 = load i32, i32* %17, align 4
  %341 = call i64 @PQgetisnull(i32* %338, i32 %339, i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %337
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %345 = load i32, i32* %19, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 3
  store i32* null, i32** %348, align 8
  br label %361

349:                                              ; preds = %337
  %350 = load i32*, i32** %8, align 8
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* %17, align 4
  %353 = call i8* @PQgetvalue(i32* %350, i32 %351, i32 %352)
  %354 = call i8* @pg_strdup(i8* %353)
  %355 = bitcast i8* %354 to i32*
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %357 = load i32, i32* %19, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 3
  store i32* %355, i32** %360, align 8
  br label %361

361:                                              ; preds = %349, %343
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %19, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %19, align 4
  br label %186

365:                                              ; preds = %186
  %366 = load i32*, i32** %8, align 8
  %367 = call i32 @PQclear(i32* %366)
  br label %368

368:                                              ; preds = %365, %161, %45
  %369 = load i32, i32* %18, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %18, align 4
  br label %29

371:                                              ; preds = %29
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %373 = call i32 @destroyPQExpBuffer(%struct.TYPE_27__* %372)
  br label %374

374:                                              ; preds = %371, %26
  ret void
}

declare dso_local %struct.TYPE_27__* @createPQExpBuffer(...) #1

declare dso_local i32 @pg_log_info(i8*, i32, i8*) #1

declare dso_local %struct.TYPE_26__* @pg_malloc(i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_19__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_27__*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_27__*, i8*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
