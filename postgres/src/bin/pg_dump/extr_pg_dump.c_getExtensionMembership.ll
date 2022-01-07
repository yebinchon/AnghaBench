; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getExtensionMembership.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getExtensionMembership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i8* }

@.str = private unnamed_addr constant [120 x i8] c"SELECT classid, objid, refobjid FROM pg_depend WHERE refclassid = 'pg_extension'::regclass AND deptype = 'e' ORDER BY 3\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"classid\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"objid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"refobjid\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"could not find referenced extension %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getExtensionMembership(i32* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %115

22:                                               ; preds = %3
  %23 = call %struct.TYPE_15__* (...) @createPQExpBuffer()
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %7, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = call i32 @appendPQExpBufferStr(%struct.TYPE_15__* %24, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %31 = call i32* @ExecuteSqlQuery(i32* %26, i32 %29, i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @PQntuples(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @PQfnumber(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @PQfnumber(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %13, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @PQfnumber(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 24
  %43 = trunc i64 %42 to i32
  %44 = call i64 @pg_malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %15, align 8
  store i32 0, i32* %10, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %16, align 8
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %104, %22
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %107

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @PQgetvalue(i32* %51, i32 %52, i32 %53)
  %55 = call i8* @atooid(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @PQgetvalue(i32* %57, i32 %58, i32 %59)
  %61 = call i8* @atooid(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @PQgetvalue(i32* %63, i32 %64, i32 %65)
  %67 = call i8* @atooid(i32 %66)
  %68 = ptrtoint i8* %67 to i64
  store i64 %68, i64* %18, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %70 = icmp eq %struct.TYPE_17__* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %50
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %18, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71, %50
  %80 = load i64, i64* %18, align 8
  %81 = call %struct.TYPE_17__* @findExtensionByOid(i64 %80)
  store %struct.TYPE_17__* %81, %struct.TYPE_17__** %16, align 8
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %84 = icmp eq %struct.TYPE_17__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* %18, align 8
  %87 = call i32 @pg_log_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  br label %104

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = bitcast %struct.TYPE_18__* %93 to i8*
  %95 = bitcast %struct.TYPE_18__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 16, i1 false)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %88, %85
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %46

107:                                              ; preds = %46
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @PQclear(i32* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @setExtensionMembership(%struct.TYPE_16__* %110, i32 %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %114 = call i32 @destroyPQExpBuffer(%struct.TYPE_15__* %113)
  br label %115

115:                                              ; preds = %107, %21
  ret void
}

declare dso_local %struct.TYPE_15__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(i32*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @findExtensionByOid(i64) #1

declare dso_local i32 @pg_log_warning(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @setExtensionMembership(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
