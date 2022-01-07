; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getForeignDataWrappers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getForeignDataWrappers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_24__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_24__ = type { i32, i32*, i8*, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"f.fdwacl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"f.fdwowner\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"'F'\00", align 1
@.str.3 = private unnamed_addr constant [540 x i8] c"SELECT f.tableoid, f.oid, f.fdwname, (%s f.fdwowner) AS rolname, f.fdwhandler::pg_catalog.regproc, f.fdwvalidator::pg_catalog.regproc, %s AS fdwacl, %s AS rfdwacl, %s AS initfdwacl, %s AS initrfdwacl, array_to_string(ARRAY(SELECT quote_ident(option_name) || ' ' || quote_literal(option_value) FROM pg_options_to_table(f.fdwoptions) ORDER BY option_name), E',\0A    ') AS fdwoptions FROM pg_foreign_data_wrapper f LEFT JOIN pg_init_privs pip ON (f.oid = pip.objoid AND pip.classoid = 'pg_foreign_data_wrapper'::regclass AND pip.objsubid = 0) \00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [395 x i8] c"SELECT tableoid, oid, fdwname, (%s fdwowner) AS rolname, fdwhandler::pg_catalog.regproc, fdwvalidator::pg_catalog.regproc, fdwacl, NULL as rfdwacl, NULL as initfdwacl, NULL AS initrfdwacl, array_to_string(ARRAY(SELECT quote_ident(option_name) || ' ' || quote_literal(option_value) FROM pg_options_to_table(fdwoptions) ORDER BY option_name), E',\0A    ') AS fdwoptions FROM pg_foreign_data_wrapper\00", align 1
@.str.5 = private unnamed_addr constant [382 x i8] c"SELECT tableoid, oid, fdwname, (%s fdwowner) AS rolname, '-' AS fdwhandler, fdwvalidator::pg_catalog.regproc, fdwacl, NULL as rfdwacl, NULL as initfdwacl, NULL AS initrfdwacl, array_to_string(ARRAY(SELECT quote_ident(option_name) || ' ' || quote_literal(option_value) FROM pg_options_to_table(fdwoptions) ORDER BY option_name), E',\0A    ') AS fdwoptions FROM pg_foreign_data_wrapper\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"fdwname\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"fdwhandler\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"fdwvalidator\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"fdwacl\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"rfdwacl\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"initfdwacl\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"initrfdwacl\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"fdwoptions\00", align 1
@DO_FDW = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @getForeignDataWrappers(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
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
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca %struct.TYPE_20__*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  %26 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %6, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 80400
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32*, i32** %5, align 8
  store i32 0, i32* %35, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %321

36:                                               ; preds = %2
  %37 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %10, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 90600
  br i1 %41, label %42, label %78

42:                                               ; preds = %36
  %43 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %23, align 8
  %44 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %24, align 8
  %45 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %25, align 8
  %46 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %26, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @buildACLQueries(%struct.TYPE_20__* %47, %struct.TYPE_20__* %48, %struct.TYPE_20__* %49, %struct.TYPE_20__* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = load i32, i32* @username_subquery, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_20__* %55, i8* getelementptr inbounds ([540 x i8], [540 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %71 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %73 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %75 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %77 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %76)
  br label %92

78:                                               ; preds = %36
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %81, 90100
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %85 = load i32, i32* @username_subquery, align 4
  %86 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_20__* %84, i8* getelementptr inbounds ([395 x i8], [395 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %89 = load i32, i32* @username_subquery, align 4
  %90 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_20__* %88, i8* getelementptr inbounds ([382 x i8], [382 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %42
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %98 = call i32* @ExecuteSqlQuery(%struct.TYPE_23__* %93, i32 %96, i32 %97)
  store i32* %98, i32** %7, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @PQntuples(i32* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 112
  %106 = trunc i64 %105 to i32
  %107 = call i64 @pg_malloc(i32 %106)
  %108 = inttoptr i64 %107 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %108, %struct.TYPE_21__** %11, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @PQfnumber(i32* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %110, i32* %12, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @PQfnumber(i32* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %112, i32* %13, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @PQfnumber(i32* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %114, i32* %14, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @PQfnumber(i32* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 %116, i32* %15, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @PQfnumber(i32* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32 %118, i32* %16, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @PQfnumber(i32* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 %120, i32* %17, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @PQfnumber(i32* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  store i32 %122, i32* %18, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @PQfnumber(i32* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i32 %124, i32* %19, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @PQfnumber(i32* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store i32 %126, i32* %20, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @PQfnumber(i32* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i32 %128, i32* %21, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @PQfnumber(i32* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i32 %130, i32* %22, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %312, %92
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %315

135:                                              ; preds = %131
  %136 = load i32, i32* @DO_FDW, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 4
  store i32 %136, i32* %142, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @PQgetvalue(i32* %143, i32 %144, i32 %145)
  %147 = call i8* @atooid(i32 %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  store i8* %147, i8** %154, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @PQgetvalue(i32* %155, i32 %156, i32 %157)
  %159 = call i8* @atooid(i32 %158)
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  store i8* %159, i8** %166, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = call i32 @AssignDumpId(%struct.TYPE_24__* %171)
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @PQgetvalue(i32* %173, i32 %174, i32 %175)
  %177 = call i8* @pg_strdup(i32 %176)
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 2
  store i8* %177, i8** %183, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 1
  store i32* null, i32** %189, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @PQgetvalue(i32* %190, i32 %191, i32 %192)
  %194 = call i8* @pg_strdup(i32 %193)
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 8
  store i8* %194, i8** %199, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @PQgetvalue(i32* %200, i32 %201, i32 %202)
  %204 = call i8* @pg_strdup(i32 %203)
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 7
  store i8* %204, i8** %209, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %17, align 4
  %213 = call i32 @PQgetvalue(i32* %210, i32 %211, i32 %212)
  %214 = call i8* @pg_strdup(i32 %213)
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 6
  store i8* %214, i8** %219, align 8
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %22, align 4
  %223 = call i32 @PQgetvalue(i32* %220, i32 %221, i32 %222)
  %224 = call i8* @pg_strdup(i32 %223)
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 5
  store i8* %224, i8** %229, align 8
  %230 = load i32*, i32** %7, align 8
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %18, align 4
  %233 = call i32 @PQgetvalue(i32* %230, i32 %231, i32 %232)
  %234 = call i8* @pg_strdup(i32 %233)
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 4
  store i8* %234, i8** %239, align 8
  %240 = load i32*, i32** %7, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %19, align 4
  %243 = call i32 @PQgetvalue(i32* %240, i32 %241, i32 %242)
  %244 = call i8* @pg_strdup(i32 %243)
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 3
  store i8* %244, i8** %249, align 8
  %250 = load i32*, i32** %7, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %20, align 4
  %253 = call i32 @PQgetvalue(i32* %250, i32 %251, i32 %252)
  %254 = call i8* @pg_strdup(i32 %253)
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  store i8* %254, i8** %259, align 8
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %21, align 4
  %263 = call i32 @PQgetvalue(i32* %260, i32 %261, i32 %262)
  %264 = call i8* @pg_strdup(i32 %263)
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  store i8* %264, i8** %269, align 8
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %276 = call i32 @selectDumpableObject(%struct.TYPE_24__* %274, %struct.TYPE_23__* %275)
  %277 = load i32*, i32** %7, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %18, align 4
  %280 = call i64 @PQgetisnull(i32* %277, i32 %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %311

282:                                              ; preds = %135
  %283 = load i32*, i32** %7, align 8
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %19, align 4
  %286 = call i64 @PQgetisnull(i32* %283, i32 %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %311

288:                                              ; preds = %282
  %289 = load i32*, i32** %7, align 8
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %20, align 4
  %292 = call i64 @PQgetisnull(i32* %289, i32 %290, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %311

294:                                              ; preds = %288
  %295 = load i32*, i32** %7, align 8
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %21, align 4
  %298 = call i64 @PQgetisnull(i32* %295, i32 %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %294
  %301 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %302 = xor i32 %301, -1
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = and i32 %309, %302
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %300, %294, %288, %282, %135
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %9, align 4
  br label %131

315:                                              ; preds = %131
  %316 = load i32*, i32** %7, align 8
  %317 = call i32 @PQclear(i32* %316)
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %319 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %318)
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %320, %struct.TYPE_21__** %3, align 8
  br label %321

321:                                              ; preds = %315, %34
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %322
}

declare dso_local %struct.TYPE_20__* @createPQExpBuffer(...) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_20__*, i8*, i32, ...) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_20__*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_24__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
