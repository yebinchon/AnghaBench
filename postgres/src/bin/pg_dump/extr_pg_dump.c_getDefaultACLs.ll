; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getDefaultACLs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getDefaultACLs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32*, i8*, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"defaclacl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"defaclrole\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"CASE WHEN defaclobjtype = 'S' THEN 's' ELSE defaclobjtype END::\22char\22\00", align 1
@.str.3 = private unnamed_addr constant [314 x i8] c"SELECT d.oid, d.tableoid, (%s d.defaclrole) AS defaclrole, d.defaclnamespace, d.defaclobjtype, %s AS defaclacl, %s AS rdefaclacl, %s AS initdefaclacl, %s AS initrdefaclacl FROM pg_default_acl d LEFT JOIN pg_init_privs pip ON (d.oid = pip.objoid AND pip.classoid = 'pg_default_acl'::regclass AND pip.objsubid = 0) \00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [182 x i8] c"SELECT oid, tableoid, (%s defaclrole) AS defaclrole, defaclnamespace, defaclobjtype, defaclacl, NULL AS rdefaclacl, NULL AS initdefaclacl, NULL AS initrdefaclacl FROM pg_default_acl\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"defaclnamespace\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"defaclobjtype\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"rdefaclacl\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"initdefaclacl\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"initrdefaclacl\00", align 1
@DO_DEFAULT_ACL = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @getDefaultACLs(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
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
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32* %1, i32** %5, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %6, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 90000
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32*, i32** %5, align 8
  store i32 0, i32* %34, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %263

35:                                               ; preds = %2
  %36 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %8, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 90600
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %21, align 8
  %43 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %22, align 8
  %44 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %23, align 8
  %45 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %45, %struct.TYPE_22__** %24, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @buildACLQueries(%struct.TYPE_22__* %46, %struct.TYPE_22__* %47, %struct.TYPE_22__* %48, %struct.TYPE_22__* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %55 = load i32, i32* @username_subquery, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %54, i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  br label %73

69:                                               ; preds = %35
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %71 = load i32, i32* @username_subquery, align 4
  %72 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %70, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %41
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %79 = call i32* @ExecuteSqlQuery(%struct.TYPE_25__* %74, i32 %77, i32 %78)
  store i32* %79, i32** %9, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @PQntuples(i32* %80)
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 88
  %87 = trunc i64 %86 to i32
  %88 = call i64 @pg_malloc(i32 %87)
  %89 = inttoptr i64 %88 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %89, %struct.TYPE_24__** %7, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @PQfnumber(i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %91, i32* %10, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @PQfnumber(i32* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %93, i32* %11, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @PQfnumber(i32* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %95, i32* %12, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @PQfnumber(i32* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i32 %97, i32* %13, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @PQfnumber(i32* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 %99, i32* %14, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @PQfnumber(i32* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %101, i32* %15, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @PQfnumber(i32* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 %103, i32* %16, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @PQfnumber(i32* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i32 %105, i32* %17, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @PQfnumber(i32* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32 %107, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %254, %73
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %257

112:                                              ; preds = %108
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32* @PQgetvalue(i32* %113, i32 %114, i32 %115)
  %117 = call i8* @atooid(i32* %116)
  %118 = ptrtoint i8* %117 to i64
  store i64 %118, i64* %25, align 8
  %119 = load i32, i32* @DO_DEFAULT_ACL, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 3
  store i32 %119, i32* %125, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32* @PQgetvalue(i32* %126, i32 %127, i32 %128)
  %130 = call i8* @atooid(i32* %129)
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  store i8* %130, i8** %137, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32* @PQgetvalue(i32* %138, i32 %139, i32 %140)
  %142 = call i8* @atooid(i32* %141)
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  store i8* %142, i8** %149, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 6
  %155 = call i32 @AssignDumpId(%struct.TYPE_20__* %154)
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32* @PQgetvalue(i32* %156, i32 %157, i32 %158)
  %160 = call i8* @pg_strdup(i32* %159)
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  store i8* %160, i8** %166, align 8
  %167 = load i64, i64* %25, align 8
  %168 = load i64, i64* @InvalidOid, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %112
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %172 = load i64, i64* %25, align 8
  %173 = call i32* @findNamespace(%struct.TYPE_25__* %171, i64 %172)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  store i32* %173, i32** %179, align 8
  br label %187

180:                                              ; preds = %112
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %180, %170
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32* @PQgetvalue(i32* %188, i32 %189, i32 %190)
  %192 = call i8* @pg_strdup(i32* %191)
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %194 = load i32, i32* %19, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 5
  store i8* %192, i8** %197, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32* @PQgetvalue(i32* %198, i32 %199, i32 %200)
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 4
  store i32 %202, i32* %207, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %15, align 4
  %211 = call i32* @PQgetvalue(i32* %208, i32 %209, i32 %210)
  %212 = call i8* @pg_strdup(i32* %211)
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %214 = load i32, i32* %19, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 3
  store i8* %212, i8** %217, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %16, align 4
  %221 = call i32* @PQgetvalue(i32* %218, i32 %219, i32 %220)
  %222 = call i8* @pg_strdup(i32* %221)
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 2
  store i8* %222, i8** %227, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* %17, align 4
  %231 = call i32* @PQgetvalue(i32* %228, i32 %229, i32 %230)
  %232 = call i8* @pg_strdup(i32* %231)
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 1
  store i8* %232, i8** %237, align 8
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %18, align 4
  %241 = call i32* @PQgetvalue(i32* %238, i32 %239, i32 %240)
  %242 = call i8* @pg_strdup(i32* %241)
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  store i8* %242, i8** %247, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i64 %250
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %253 = call i32 @selectDumpableDefaultACL(%struct.TYPE_24__* %251, %struct.TYPE_23__* %252)
  br label %254

254:                                              ; preds = %187
  %255 = load i32, i32* %19, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %19, align 4
  br label %108

257:                                              ; preds = %108
  %258 = load i32*, i32** %9, align 8
  %259 = call i32 @PQclear(i32* %258)
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %261 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %260)
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %262, %struct.TYPE_24__** %3, align 8
  br label %263

263:                                              ; preds = %257, %33
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %264
}

declare dso_local %struct.TYPE_22__* @createPQExpBuffer(...) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_22__*, i8*, i32, ...) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32*) #1

declare dso_local i32* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_20__*) #1

declare dso_local i8* @pg_strdup(i32*) #1

declare dso_local i32* @findNamespace(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @selectDumpableDefaultACL(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
