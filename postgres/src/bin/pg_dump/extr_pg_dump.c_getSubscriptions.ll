; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getSubscriptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getSubscriptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_22__, i8*, i8*, i8*, i32*, i8* }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i8*, i8* }

@.str = private unnamed_addr constant [134 x i8] c"SELECT count(*) FROM pg_subscription WHERE subdbid = (SELECT oid FROM pg_database                 WHERE datname = current_database())\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"subscriptions not dumped because current user is not a superuser\00", align 1
@.str.2 = private unnamed_addr constant [255 x i8] c"SELECT s.tableoid, s.oid, s.subname,(%s s.subowner) AS rolname,  s.subconninfo, s.subslotname, s.subsynccommit,  s.subpublications FROM pg_subscription s WHERE s.subdbid = (SELECT oid FROM pg_database                   WHERE datname = current_database())\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"subname\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"subconninfo\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"subslotname\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"subsynccommit\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"subpublications\00", align 1
@DO_SUBSCRIPTION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"owner of subscription \22%s\22 appears to be invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getSubscriptions(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %3, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 100000
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %1
  br label %235

31:                                               ; preds = %25
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %33 = call i32 @is_superuser(%struct.TYPE_21__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %38 = call i32* @ExecuteSqlQuery(%struct.TYPE_21__* %36, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @PQgetvalue(i32* %39, i32 0, i32 0)
  %41 = call i32 @atoi(i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 (i8*, ...) @pg_log_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @PQclear(i32* %47)
  br label %235

49:                                               ; preds = %31
  %50 = call %struct.TYPE_19__* (...) @createPQExpBuffer()
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %4, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = call i32 @resetPQExpBuffer(%struct.TYPE_19__* %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = load i32, i32* @username_subquery, align 4
  %55 = call i32 @appendPQExpBuffer(%struct.TYPE_19__* %53, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %61 = call i32* @ExecuteSqlQuery(%struct.TYPE_21__* %56, i8* %59, i32 %60)
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @PQntuples(i32* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @PQfnumber(i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %65, i32* %7, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @PQfnumber(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @PQfnumber(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @PQfnumber(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %71, i32* %10, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @PQfnumber(i32* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 %73, i32* %11, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @PQfnumber(i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 %75, i32* %12, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @PQfnumber(i32* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 %77, i32* %13, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @PQfnumber(i32* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 72
  %83 = trunc i64 %82 to i32
  %84 = call %struct.TYPE_18__* @pg_malloc(i32 %83)
  store %struct.TYPE_18__* %84, %struct.TYPE_18__** %6, align 8
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %227, %49
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %230

89:                                               ; preds = %85
  %90 = load i32, i32* @DO_SUBSCRIPTION, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  store i32 %90, i32* %96, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @PQgetvalue(i32* %97, i32 %98, i32 %99)
  %101 = call i8* @atooid(i32 %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store i8* %101, i8** %108, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @PQgetvalue(i32* %109, i32 %110, i32 %111)
  %113 = call i8* @atooid(i32 %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  store i8* %113, i8** %120, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = call i32 @AssignDumpId(%struct.TYPE_22__* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @PQgetvalue(i32* %127, i32 %128, i32 %129)
  %131 = call i8* @pg_strdup(i32 %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  store i8* %131, i8** %137, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @PQgetvalue(i32* %138, i32 %139, i32 %140)
  %142 = call i8* @pg_strdup(i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  store i8* %142, i8** %147, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @PQgetvalue(i32* %148, i32 %149, i32 %150)
  %152 = call i8* @pg_strdup(i32 %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 5
  store i8* %152, i8** %157, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i64 @PQgetisnull(i32* %158, i32 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %89
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 4
  store i32* null, i32** %168, align 8
  br label %181

169:                                              ; preds = %89
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @PQgetvalue(i32* %170, i32 %171, i32 %172)
  %174 = call i8* @pg_strdup(i32 %173)
  %175 = bitcast i8* %174 to i32*
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 4
  store i32* %175, i32** %180, align 8
  br label %181

181:                                              ; preds = %169, %163
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %13, align 4
  %185 = call i32 @PQgetvalue(i32* %182, i32 %183, i32 %184)
  %186 = call i8* @pg_strdup(i32 %185)
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 3
  store i8* %186, i8** %191, align 8
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @PQgetvalue(i32* %192, i32 %193, i32 %194)
  %196 = call i8* @pg_strdup(i32 %195)
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  store i8* %196, i8** %201, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = call i64 @strlen(i8* %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %181
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 (i8*, ...) @pg_log_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8* %217)
  br label %219

219:                                              ; preds = %210, %181
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %226 = call i32 @selectDumpableObject(%struct.TYPE_22__* %224, %struct.TYPE_21__* %225)
  br label %227

227:                                              ; preds = %219
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %15, align 4
  br label %85

230:                                              ; preds = %85
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @PQclear(i32* %231)
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %234 = call i32 @destroyPQExpBuffer(%struct.TYPE_19__* %233)
  br label %235

235:                                              ; preds = %230, %46, %30
  ret void
}

declare dso_local i32 @is_superuser(%struct.TYPE_21__*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @pg_log_warning(i8*, ...) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local %struct.TYPE_19__* @createPQExpBuffer(...) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_19__*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local %struct.TYPE_18__* @pg_malloc(i32) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_22__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
