; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getForeignServers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getForeignServers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_24__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_24__ = type { i32, i32*, i8*, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"f.srvacl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"f.srvowner\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"'S'\00", align 1
@.str.3 = private unnamed_addr constant [493 x i8] c"SELECT f.tableoid, f.oid, f.srvname, (%s f.srvowner) AS rolname, f.srvfdw, f.srvtype, f.srvversion, %s AS srvacl, %s AS rsrvacl, %s AS initsrvacl, %s AS initrsrvacl, array_to_string(ARRAY(SELECT quote_ident(option_name) || ' ' || quote_literal(option_value) FROM pg_options_to_table(f.srvoptions) ORDER BY option_name), E',\0A    ') AS srvoptions FROM pg_foreign_server f LEFT JOIN pg_init_privs pip ON (f.oid = pip.objoid AND pip.classoid = 'pg_foreign_server'::regclass AND pip.objsubid = 0) \00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [352 x i8] c"SELECT tableoid, oid, srvname, (%s srvowner) AS rolname, srvfdw, srvtype, srvversion, srvacl, NULL AS rsrvacl, NULL AS initsrvacl, NULL AS initrsrvacl, array_to_string(ARRAY(SELECT quote_ident(option_name) || ' ' || quote_literal(option_value) FROM pg_options_to_table(srvoptions) ORDER BY option_name), E',\0A    ') AS srvoptions FROM pg_foreign_server\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"srvname\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"srvfdw\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"srvtype\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"srvversion\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"srvacl\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"rsrvacl\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"initsrvacl\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"initrsrvacl\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"srvoptions\00", align 1
@DO_FOREIGN_SERVER = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @getForeignServers(%struct.TYPE_23__* %0, i32* %1) #0 {
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
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_20__*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  %26 = alloca %struct.TYPE_20__*, align 8
  %27 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %6, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 80400
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32*, i32** %5, align 8
  store i32 0, i32* %36, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %324

37:                                               ; preds = %2
  %38 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %10, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 90600
  br i1 %42, label %43, label %79

43:                                               ; preds = %37
  %44 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %24, align 8
  %45 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %25, align 8
  %46 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %26, align 8
  %47 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %27, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @buildACLQueries(%struct.TYPE_20__* %48, %struct.TYPE_20__* %49, %struct.TYPE_20__* %50, %struct.TYPE_20__* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %57 = load i32, i32* @username_subquery, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_20__* %56, i8* getelementptr inbounds ([493 x i8], [493 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %72 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %71)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %74 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %76 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %78 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %77)
  br label %83

79:                                               ; preds = %37
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %81 = load i32, i32* @username_subquery, align 4
  %82 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_20__* %80, i8* getelementptr inbounds ([352 x i8], [352 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %43
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %89 = call i32* @ExecuteSqlQuery(%struct.TYPE_23__* %84, i32 %87, i32 %88)
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @PQntuples(i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 120
  %97 = trunc i64 %96 to i32
  %98 = call i64 @pg_malloc(i32 %97)
  %99 = inttoptr i64 %98 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %99, %struct.TYPE_21__** %11, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @PQfnumber(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %101, i32* %12, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @PQfnumber(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 %103, i32* %13, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @PQfnumber(i32* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 %105, i32* %14, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @PQfnumber(i32* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %107, i32* %15, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @PQfnumber(i32* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 %109, i32* %16, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @PQfnumber(i32* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %111, i32* %17, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @PQfnumber(i32* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i32 %113, i32* %18, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @PQfnumber(i32* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  store i32 %115, i32* %19, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @PQfnumber(i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i32 %117, i32* %20, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @PQfnumber(i32* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store i32 %119, i32* %21, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @PQfnumber(i32* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i32 %121, i32* %22, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @PQfnumber(i32* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i32 %123, i32* %23, align 4
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %315, %83
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %318

128:                                              ; preds = %124
  %129 = load i32, i32* @DO_FOREIGN_SERVER, align 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 4
  store i32 %129, i32* %135, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @PQgetvalue(i32* %136, i32 %137, i32 %138)
  %140 = call i8* @atooid(i32 %139)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  store i8* %140, i8** %147, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @PQgetvalue(i32* %148, i32 %149, i32 %150)
  %152 = call i8* @atooid(i32 %151)
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  store i8* %152, i8** %159, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = call i32 @AssignDumpId(%struct.TYPE_24__* %164)
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @PQgetvalue(i32* %166, i32 %167, i32 %168)
  %170 = call i8* @pg_strdup(i32 %169)
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 2
  store i8* %170, i8** %176, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  store i32* null, i32** %182, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @PQgetvalue(i32* %183, i32 %184, i32 %185)
  %187 = call i8* @pg_strdup(i32 %186)
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 9
  store i8* %187, i8** %192, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %16, align 4
  %196 = call i32 @PQgetvalue(i32* %193, i32 %194, i32 %195)
  %197 = call i8* @atooid(i32 %196)
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 8
  store i8* %197, i8** %202, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %17, align 4
  %206 = call i32 @PQgetvalue(i32* %203, i32 %204, i32 %205)
  %207 = call i8* @pg_strdup(i32 %206)
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 7
  store i8* %207, i8** %212, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %18, align 4
  %216 = call i32 @PQgetvalue(i32* %213, i32 %214, i32 %215)
  %217 = call i8* @pg_strdup(i32 %216)
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 6
  store i8* %217, i8** %222, align 8
  %223 = load i32*, i32** %7, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %23, align 4
  %226 = call i32 @PQgetvalue(i32* %223, i32 %224, i32 %225)
  %227 = call i8* @pg_strdup(i32 %226)
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 5
  store i8* %227, i8** %232, align 8
  %233 = load i32*, i32** %7, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @PQgetvalue(i32* %233, i32 %234, i32 %235)
  %237 = call i8* @pg_strdup(i32 %236)
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 4
  store i8* %237, i8** %242, align 8
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %20, align 4
  %246 = call i32 @PQgetvalue(i32* %243, i32 %244, i32 %245)
  %247 = call i8* @pg_strdup(i32 %246)
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 3
  store i8* %247, i8** %252, align 8
  %253 = load i32*, i32** %7, align 8
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* %21, align 4
  %256 = call i32 @PQgetvalue(i32* %253, i32 %254, i32 %255)
  %257 = call i8* @pg_strdup(i32 %256)
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 2
  store i8* %257, i8** %262, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %22, align 4
  %266 = call i32 @PQgetvalue(i32* %263, i32 %264, i32 %265)
  %267 = call i8* @pg_strdup(i32 %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 1
  store i8* %267, i8** %272, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %279 = call i32 @selectDumpableObject(%struct.TYPE_24__* %277, %struct.TYPE_23__* %278)
  %280 = load i32*, i32** %7, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %19, align 4
  %283 = call i64 @PQgetisnull(i32* %280, i32 %281, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %314

285:                                              ; preds = %128
  %286 = load i32*, i32** %7, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* %20, align 4
  %289 = call i64 @PQgetisnull(i32* %286, i32 %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %314

291:                                              ; preds = %285
  %292 = load i32*, i32** %7, align 8
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %21, align 4
  %295 = call i64 @PQgetisnull(i32* %292, i32 %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %314

297:                                              ; preds = %291
  %298 = load i32*, i32** %7, align 8
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* %22, align 4
  %301 = call i64 @PQgetisnull(i32* %298, i32 %299, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %297
  %304 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %305 = xor i32 %304, -1
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, %305
  store i32 %313, i32* %311, align 8
  br label %314

314:                                              ; preds = %303, %297, %291, %285, %128
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %9, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %9, align 4
  br label %124

318:                                              ; preds = %124
  %319 = load i32*, i32** %7, align 8
  %320 = call i32 @PQclear(i32* %319)
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %322 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %321)
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %323, %struct.TYPE_21__** %3, align 8
  br label %324

324:                                              ; preds = %318, %35
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %325
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
