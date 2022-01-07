; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeOneTSParser.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeOneTSParser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32*, i64, %struct.TYPE_9__, i32*, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@pset = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@describeOneTSParser.translate_columns = internal constant [3 x i32] [i32 1, i32 0, i32 0], align 4
@.str = private unnamed_addr constant [836 x i8] c"SELECT '%s' AS \22%s\22,\0A   p.prsstart::pg_catalog.regproc AS \22%s\22,\0A   pg_catalog.obj_description(p.prsstart, 'pg_proc') as \22%s\22\0A FROM pg_catalog.pg_ts_parser p\0A WHERE p.oid = '%s'\0AUNION ALL\0ASELECT '%s',\0A   p.prstoken::pg_catalog.regproc,\0A   pg_catalog.obj_description(p.prstoken, 'pg_proc')\0A FROM pg_catalog.pg_ts_parser p\0A WHERE p.oid = '%s'\0AUNION ALL\0ASELECT '%s',\0A   p.prsend::pg_catalog.regproc,\0A   pg_catalog.obj_description(p.prsend, 'pg_proc')\0A FROM pg_catalog.pg_ts_parser p\0A WHERE p.oid = '%s'\0AUNION ALL\0ASELECT '%s',\0A   p.prsheadline::pg_catalog.regproc,\0A   pg_catalog.obj_description(p.prsheadline, 'pg_proc')\0A FROM pg_catalog.pg_ts_parser p\0A WHERE p.oid = '%s'\0AUNION ALL\0ASELECT '%s',\0A   p.prslextype::pg_catalog.regproc,\0A   pg_catalog.obj_description(p.prslextype, 'pg_proc')\0A FROM pg_catalog.pg_ts_parser p\0A WHERE p.oid = '%s';\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Start parse\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Get next token\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"End parse\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Get headline\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Get token types\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Text search parser \22%s.%s\22\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Text search parser \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [119 x i8] c"SELECT t.alias as \22%s\22,\0A  t.description as \22%s\22\0AFROM pg_catalog.ts_token_type( '%s'::pg_catalog.oid ) as t\0AORDER BY 1;\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Token name\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Token types for parser \22%s.%s\22\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Token types for parser \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @describeOneTSParser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @describeOneTSParser(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 2) to i8*), i64 56, i1 false)
  %13 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %8)
  %14 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @gettext_noop(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @gettext_noop(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @gettext_noop(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @gettext_noop(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_11__* %8, i8* getelementptr inbounds ([836 x i8], [836 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i32 %18, i32 %19, i8* %20, i32 %21, i8* %22, i32 %23, i8* %24, i32 %25, i8* %26, i32 %27, i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @PSQLexec(i32 %31)
  store i32* %32, i32** %9, align 8
  %33 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %8)
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 6
  store i32* null, i32** %38, align 8
  %39 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %10)
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_11__* %10, i8* %45, i8* %46, i8* %47)
  br label %55

49:                                               ; preds = %37
  %50 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_11__* %10, i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %49, %42
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @describeOneTSParser.translate_columns, i64 0, i64 0), i32** %63, align 8
  %64 = call i64 @lengthof(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @describeOneTSParser.translate_columns, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i64 %64, i64* %65, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 1), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %69 = call i32 @printQuery(i32* %66, %struct.TYPE_10__* %11, i32 %67, i32 0, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @PQclear(i32* %70)
  %72 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %8)
  %73 = call i32 @gettext_noop(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_11__* %8, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.11, i64 0, i64 0), i8* %75, i32 %76, i8* %77)
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32* @PSQLexec(i32 %80)
  store i32* %81, i32** %9, align 8
  %82 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %8)
  %83 = load i32*, i32** %9, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %120

86:                                               ; preds = %55
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 6
  store i32* null, i32** %87, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_11__* %10, i8* %93, i8* %94, i8* %95)
  br label %103

97:                                               ; preds = %86
  %98 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 (%struct.TYPE_11__*, i8*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_11__* %10, i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %97, %90
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  store i32* null, i32** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32* null, i32** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 1), align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %116 = call i32 @printQuery(i32* %113, %struct.TYPE_10__* %11, i32 %114, i32 0, i32 %115)
  %117 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %10)
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @PQclear(i32* %118)
  store i32 1, i32* %4, align 4
  br label %120

120:                                              ; preds = %103, %85, %36
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_11__*, i8*, i8*, ...) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @lengthof(i32*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_10__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
