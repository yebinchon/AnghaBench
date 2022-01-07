; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getProcLangs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getProcLangs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i8*, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"l.lanacl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"l.lanowner\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"'l'\00", align 1
@.str.3 = private unnamed_addr constant [359 x i8] c"SELECT l.tableoid, l.oid, l.lanname, l.lanpltrusted, l.lanplcallfoid, l.laninline, l.lanvalidator, %s AS lanacl, %s AS rlanacl, %s AS initlanacl, %s AS initrlanacl, (%s l.lanowner) AS lanowner FROM pg_language l LEFT JOIN pg_init_privs pip ON (l.oid = pip.objoid AND pip.classoid = 'pg_language'::regclass AND pip.objsubid = 0) WHERE l.lanispl ORDER BY l.oid\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [221 x i8] c"SELECT tableoid, oid, lanname, lanpltrusted, lanplcallfoid, laninline, lanvalidator, lanacl, NULL AS rlanacl, NULL AS initlanacl, NULL AS initrlanacl, (%s lanowner) AS lanowner FROM pg_language WHERE lanispl ORDER BY oid\00", align 1
@.str.5 = private unnamed_addr constant [226 x i8] c"SELECT tableoid, oid, lanname, lanpltrusted, lanplcallfoid, 0 AS laninline, lanvalidator, lanacl, NULL AS rlanacl, NULL AS initlanacl, NULL AS initrlanacl, (%s lanowner) AS lanowner FROM pg_language WHERE lanispl ORDER BY oid\00", align 1
@.str.6 = private unnamed_addr constant [222 x i8] c"SELECT tableoid, oid, lanname, lanpltrusted, lanplcallfoid, 0 AS laninline, lanvalidator, lanacl, NULL AS rlanacl, NULL AS initlanacl, NULL AS initrlanacl, (%s '10') AS lanowner FROM pg_language WHERE lanispl ORDER BY oid\00", align 1
@.str.7 = private unnamed_addr constant [221 x i8] c"SELECT tableoid, oid, lanname, lanpltrusted, lanplcallfoid, 0 AS laninline, lanvalidator, lanacl, NULL AS rlanacl, NULL AS initlanacl, NULL AS initrlanacl, (%s '1') AS lanowner FROM pg_language WHERE lanispl ORDER BY oid\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"lanname\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"lanpltrusted\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"lanplcallfoid\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"laninline\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"lanvalidator\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"lanacl\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"rlanacl\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"initlanacl\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"initrlanacl\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"lanowner\00", align 1
@DO_PROCLANG = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @getProcLangs(%struct.TYPE_24__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca %struct.TYPE_22__*, align 8
  %26 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32* %1, i32** %4, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %5, align 8
  %30 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %9, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 90600
  br i1 %34, label %35, label %71

35:                                               ; preds = %2
  %36 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %23, align 8
  %37 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %24, align 8
  %38 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %25, align 8
  %39 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %26, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @buildACLQueries(%struct.TYPE_22__* %40, %struct.TYPE_22__* %41, %struct.TYPE_22__* %42, %struct.TYPE_22__* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @username_subquery, align 4
  %62 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %48, i8* getelementptr inbounds ([359 x i8], [359 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %60, i32 %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %64 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %66 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %68 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %67)
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %70 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %69)
  br label %105

71:                                               ; preds = %2
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 90000
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %78 = load i32, i32* @username_subquery, align 4
  %79 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %77, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %104

80:                                               ; preds = %71
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %83, 80300
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %87 = load i32, i32* @username_subquery, align 4
  %88 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %86, i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %103

89:                                               ; preds = %80
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %92, 80100
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %96 = load i32, i32* @username_subquery, align 4
  %97 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %95, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  br label %102

98:                                               ; preds = %89
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %100 = load i32, i32* @username_subquery, align 4
  %101 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %99, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %104, %35
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %111 = call i32* @ExecuteSqlQuery(%struct.TYPE_24__* %106, i32 %109, i32 %110)
  store i32* %111, i32** %6, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @PQntuples(i32* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32*, i32** %4, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 112
  %119 = trunc i64 %118 to i32
  %120 = call i64 @pg_malloc(i32 %119)
  %121 = inttoptr i64 %120 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %10, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @PQfnumber(i32* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %123, i32* %11, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @PQfnumber(i32* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i32 %125, i32* %12, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @PQfnumber(i32* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %127, i32* %13, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @PQfnumber(i32* %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 %129, i32* %14, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @PQfnumber(i32* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i32 %131, i32* %15, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @PQfnumber(i32* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  store i32 %133, i32* %16, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @PQfnumber(i32* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 %135, i32* %17, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @PQfnumber(i32* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i32 %137, i32* %18, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @PQfnumber(i32* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  store i32 %139, i32* %19, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @PQfnumber(i32* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  store i32 %141, i32* %20, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @PQfnumber(i32* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  store i32 %143, i32* %21, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @PQfnumber(i32* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  store i32 %145, i32* %22, align 4
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %333, %105
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %336

150:                                              ; preds = %146
  %151 = load i32, i32* @DO_PROCLANG, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 3
  store i32 %151, i32* %157, align 8
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i8* @PQgetvalue(i32* %158, i32 %159, i32 %160)
  %162 = call i8* @atooid(i8* %161)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  store i8* %162, i8** %169, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i8* @PQgetvalue(i32* %170, i32 %171, i32 %172)
  %174 = call i8* @atooid(i8* %173)
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  store i8* %174, i8** %181, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %187 = call i32 @AssignDumpId(%struct.TYPE_19__* %186)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %13, align 4
  %191 = call i8* @PQgetvalue(i32* %188, i32 %189, i32 %190)
  %192 = call i8* @pg_strdup(i8* %191)
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  store i8* %192, i8** %198, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %14, align 4
  %202 = call i8* @PQgetvalue(i32* %199, i32 %200, i32 %201)
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 116
  %206 = zext i1 %205 to i32
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  store i32 %206, i32* %211, align 8
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %15, align 4
  %215 = call i8* @PQgetvalue(i32* %212, i32 %213, i32 %214)
  %216 = call i8* @atooid(i8* %215)
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 9
  store i8* %216, i8** %221, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* %16, align 4
  %225 = call i8* @PQgetvalue(i32* %222, i32 %223, i32 %224)
  %226 = call i8* @atooid(i8* %225)
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 8
  store i8* %226, i8** %231, align 8
  %232 = load i32*, i32** %6, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %17, align 4
  %235 = call i8* @PQgetvalue(i32* %232, i32 %233, i32 %234)
  %236 = call i8* @atooid(i8* %235)
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 7
  store i8* %236, i8** %241, align 8
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %18, align 4
  %245 = call i8* @PQgetvalue(i32* %242, i32 %243, i32 %244)
  %246 = call i8* @pg_strdup(i8* %245)
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 6
  store i8* %246, i8** %251, align 8
  %252 = load i32*, i32** %6, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %19, align 4
  %255 = call i8* @PQgetvalue(i32* %252, i32 %253, i32 %254)
  %256 = call i8* @pg_strdup(i8* %255)
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 5
  store i8* %256, i8** %261, align 8
  %262 = load i32*, i32** %6, align 8
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %20, align 4
  %265 = call i8* @PQgetvalue(i32* %262, i32 %263, i32 %264)
  %266 = call i8* @pg_strdup(i8* %265)
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 4
  store i8* %266, i8** %271, align 8
  %272 = load i32*, i32** %6, align 8
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* %21, align 4
  %275 = call i8* @PQgetvalue(i32* %272, i32 %273, i32 %274)
  %276 = call i8* @pg_strdup(i8* %275)
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 3
  store i8* %276, i8** %281, align 8
  %282 = load i32*, i32** %6, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %22, align 4
  %285 = call i8* @PQgetvalue(i32* %282, i32 %283, i32 %284)
  %286 = call i8* @pg_strdup(i8* %285)
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 2
  store i8* %286, i8** %291, align 8
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i64 %294
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %297 = call i32 @selectDumpableProcLang(%struct.TYPE_21__* %295, %struct.TYPE_24__* %296)
  %298 = load i32*, i32** %6, align 8
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* %18, align 4
  %301 = call i64 @PQgetisnull(i32* %298, i32 %299, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %332

303:                                              ; preds = %150
  %304 = load i32*, i32** %6, align 8
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* %19, align 4
  %307 = call i64 @PQgetisnull(i32* %304, i32 %305, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %332

309:                                              ; preds = %303
  %310 = load i32*, i32** %6, align 8
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %20, align 4
  %313 = call i64 @PQgetisnull(i32* %310, i32 %311, i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %332

315:                                              ; preds = %309
  %316 = load i32*, i32** %6, align 8
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* %21, align 4
  %319 = call i64 @PQgetisnull(i32* %316, i32 %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %315
  %322 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %323 = xor i32 %322, -1
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %325 = load i32, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = and i32 %330, %323
  store i32 %331, i32* %329, align 8
  br label %332

332:                                              ; preds = %321, %315, %309, %303, %150
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %8, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %8, align 4
  br label %146

336:                                              ; preds = %146
  %337 = load i32*, i32** %6, align 8
  %338 = call i32 @PQclear(i32* %337)
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %340 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %339)
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  ret %struct.TYPE_21__* %341
}

declare dso_local %struct.TYPE_22__* @createPQExpBuffer(...) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_22__*, i8*, i32, ...) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_22__*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_19__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @selectDumpableProcLang(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
