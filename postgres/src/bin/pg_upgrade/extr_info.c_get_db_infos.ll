; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_get_db_infos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_get_db_infos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@QUERY_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [222 x i8] c"SELECT d.oid, d.datname, d.encoding, d.datcollate, d.datctype, %s AS spclocation FROM pg_catalog.pg_database d  LEFT OUTER JOIN pg_catalog.pg_tablespace t  ON d.dattablespace = t.oid WHERE d.datallowconn = true ORDER BY 2\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"t.spclocation\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"pg_catalog.pg_tablespace_location(t.oid)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"datname\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"datcollate\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"datctype\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"spclocation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @get_db_infos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_db_infos(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i32* @connectToServer(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = load i32, i32* @QUERY_ALLOC, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = trunc i64 %19 to i32
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @GET_MAJOR_VERSION(i32 %25)
  %27 = icmp sle i32 %26, 901
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)
  %30 = call i32 @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32* @executeQueryOrDie(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @PQfnumber(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @PQfnumber(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @PQfnumber(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @PQfnumber(i32* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @PQfnumber(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @PQfnumber(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @PQntuples(i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 48, %48
  %50 = trunc i64 %49 to i32
  %51 = call i64 @pg_malloc(i32 %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %119, %1
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %122

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i8* @PQgetvalue(i32* %58, i32 %59, i32 %60)
  %62 = call i32 @atooid(i8* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 5
  store i32 %62, i32* %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i8* @PQgetvalue(i32* %68, i32 %69, i32 %70)
  %72 = call i8* @pg_strdup(i8* %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  store i8* %72, i8** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i8* @PQgetvalue(i32* %78, i32 %79, i32 %80)
  %82 = call i32 @atoi(i8* %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store i32 %82, i32* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i8* @PQgetvalue(i32* %88, i32 %89, i32 %90)
  %92 = call i8* @pg_strdup(i8* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store i8* %92, i8** %97, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i8* @PQgetvalue(i32* %98, i32 %99, i32 %100)
  %102 = call i8* @pg_strdup(i8* %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i8* %102, i8** %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i8* @PQgetvalue(i32* %114, i32 %115, i32 %116)
  %118 = call i32 @snprintf(i8* %113, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %57
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %53

122:                                              ; preds = %53
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @PQclear(i32* %123)
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @PQfinish(i32* %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %130, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %135)
  ret void
}

declare dso_local i32* @connectToServer(%struct.TYPE_8__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32* @executeQueryOrDie(i32*, i8*, i8*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
