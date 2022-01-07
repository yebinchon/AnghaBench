; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getBlobs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getBlobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_23__, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"reading large objects\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"l.lomacl\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"l.lomowner\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"'L'\00", align 1
@.str.4 = private unnamed_addr constant [258 x i8] c"SELECT l.oid, (%s l.lomowner) AS rolname, %s AS lomacl, %s AS rlomacl, %s AS initlomacl, %s AS initrlomacl FROM pg_largeobject_metadata l LEFT JOIN pg_init_privs pip ON (l.oid = pip.objoid AND pip.classoid = 'pg_largeobject'::regclass AND pip.objsubid = 0) \00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [133 x i8] c"SELECT oid, (%s lomowner) AS rolname, lomacl, NULL AS rlomacl, NULL AS initlomacl, NULL AS initrlomacl  FROM pg_largeobject_metadata\00", align 1
@.str.6 = private unnamed_addr constant [166 x i8] c"SELECT DISTINCT loid AS oid, NULL::name AS rolname, NULL::oid AS lomacl, NULL::oid AS rlomacl, NULL::oid AS initlomacl, NULL::oid AS initrlomacl  FROM pg_largeobject\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"lomacl\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"rlomacl\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"initlomacl\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"initrlomacl\00", align 1
@DO_BLOB = common dso_local global i32 0, align 4
@LargeObjectRelationId = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4
@DUMP_COMPONENT_DATA = common dso_local global i32 0, align 4
@DO_BLOB_DATA = common dso_local global i32 0, align 4
@nilCatalogId = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"BLOBS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @getBlobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getBlobs(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %3, align 8
  %23 = call %struct.TYPE_18__* (...) @createPQExpBuffer()
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %4, align 8
  %24 = call i32 @pg_log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 90600
  br i1 %28, label %29, label %65

29:                                               ; preds = %1
  %30 = call %struct.TYPE_18__* (...) @createPQExpBuffer()
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %16, align 8
  %31 = call %struct.TYPE_18__* (...) @createPQExpBuffer()
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %17, align 8
  %32 = call %struct.TYPE_18__* (...) @createPQExpBuffer()
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %18, align 8
  %33 = call %struct.TYPE_18__* (...) @createPQExpBuffer()
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %19, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @buildACLQueries(%struct.TYPE_18__* %34, %struct.TYPE_18__* %35, %struct.TYPE_18__* %36, %struct.TYPE_18__* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = load i32, i32* @username_subquery, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_18__* %42, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %58 = call i32 @destroyPQExpBuffer(%struct.TYPE_18__* %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %60 = call i32 @destroyPQExpBuffer(%struct.TYPE_18__* %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %62 = call i32 @destroyPQExpBuffer(%struct.TYPE_18__* %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %64 = call i32 @destroyPQExpBuffer(%struct.TYPE_18__* %63)
  br label %78

65:                                               ; preds = %1
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 90000
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = load i32, i32* @username_subquery, align 4
  %73 = call i32 (%struct.TYPE_18__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_18__* %71, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  br label %77

74:                                               ; preds = %65
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = call i32 @appendPQExpBufferStr(%struct.TYPE_18__* %75, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77, %29
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %84 = call i32* @ExecuteSqlQuery(%struct.TYPE_22__* %79, i32 %82, i32 %83)
  store i32* %84, i32** %7, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @PQfnumber(i32* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %86, i32* %10, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @PQfnumber(i32* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %88, i32* %11, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @PQfnumber(i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 %90, i32* %12, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @PQfnumber(i32* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %92, i32* %13, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @PQfnumber(i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i32 %94, i32* %14, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @PQfnumber(i32* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32 %96, i32* %15, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @PQntuples(i32* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 64
  %102 = trunc i64 %101 to i32
  %103 = call i64 @pg_malloc(i32 %102)
  %104 = inttoptr i64 %103 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %255, %78
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %258

109:                                              ; preds = %105
  %110 = load i32, i32* @DO_BLOB, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  store i32 %110, i32* %116, align 8
  %117 = load i32, i32* @LargeObjectRelationId, align 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i8* @PQgetvalue(i32* %125, i32 %126, i32 %127)
  %129 = call i32 @atooid(i8* %128)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = call i32 @AssignDumpId(%struct.TYPE_19__* %141)
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i8* @PQgetvalue(i32* %143, i32 %144, i32 %145)
  %147 = call i8* @pg_strdup(i8* %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  store i8* %147, i8** %153, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i8* @PQgetvalue(i32* %154, i32 %155, i32 %156)
  %158 = call i8* @pg_strdup(i8* %157)
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 5
  store i8* %158, i8** %163, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i8* @PQgetvalue(i32* %164, i32 %165, i32 %166)
  %168 = call i8* @pg_strdup(i8* %167)
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 4
  store i8* %168, i8** %173, align 8
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %13, align 4
  %177 = call i8* @PQgetvalue(i32* %174, i32 %175, i32 %176)
  %178 = call i8* @pg_strdup(i8* %177)
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 3
  store i8* %178, i8** %183, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i8* @PQgetvalue(i32* %184, i32 %185, i32 %186)
  %188 = call i8* @pg_strdup(i8* %187)
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  store i8* %188, i8** %193, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %15, align 4
  %197 = call i8* @PQgetvalue(i32* %194, i32 %195, i32 %196)
  %198 = call i8* @pg_strdup(i8* %197)
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  store i8* %198, i8** %203, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %12, align 4
  %207 = call i64 @PQgetisnull(i32* %204, i32 %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %238

209:                                              ; preds = %109
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i64 @PQgetisnull(i32* %210, i32 %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %238

215:                                              ; preds = %209
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i64 @PQgetisnull(i32* %216, i32 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %215
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %15, align 4
  %225 = call i64 @PQgetisnull(i32* %222, i32 %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %221
  %228 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, %229
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %227, %221, %215, %209, %109
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %238
  %244 = load i32, i32* @DUMP_COMPONENT_DATA, align 4
  %245 = xor i32 %244, -1
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %252, %245
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %243, %238
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %9, align 4
  br label %105

258:                                              ; preds = %105
  %259 = load i32, i32* %8, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = call i64 @pg_malloc(i32 24)
  %263 = inttoptr i64 %262 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %263, %struct.TYPE_19__** %6, align 8
  %264 = load i32, i32* @DO_BLOB_DATA, align 4
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 1
  %269 = bitcast %struct.TYPE_23__* %268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %269, i8* align 4 bitcast (%struct.TYPE_23__* @nilCatalogId to i8*), i64 8, i1 false)
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %271 = call i32 @AssignDumpId(%struct.TYPE_19__* %270)
  %272 = call i8* @pg_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  store i8* %272, i8** %274, align 8
  br label %275

275:                                              ; preds = %261, %258
  %276 = load i32*, i32** %7, align 8
  %277 = call i32 @PQclear(i32* %276)
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %279 = call i32 @destroyPQExpBuffer(%struct.TYPE_18__* %278)
  ret void
}

declare dso_local %struct.TYPE_18__* @createPQExpBuffer(...) #1

declare dso_local i32 @pg_log_info(i8*) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_18__*, i8*, i32, ...) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_18__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_18__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_19__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
