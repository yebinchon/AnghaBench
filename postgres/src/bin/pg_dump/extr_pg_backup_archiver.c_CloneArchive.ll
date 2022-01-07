; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_CloneArchive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_CloneArchive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32*, i32 (%struct.TYPE_18__*)*, %struct.TYPE_15__, i64, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@archModeRead = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"dbname=\00", align 1
@TRI_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @CloneArchive(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %9 = call i64 @pg_malloc(i32 88)
  %10 = inttoptr i64 %9 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = call i32 @memcpy(%struct.TYPE_18__* %11, %struct.TYPE_18__* %12, i32 88)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 9
  %16 = call i32 @memset(i32* %15, i32 0, i32 4)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 8
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 7
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @pg_strdup(i64 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @archModeRead, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %38
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %4, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = bitcast %struct.TYPE_18__* %58 to i32*
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ConnectDatabase(i32* %59, i32 %62, i8* %65, i8* %68, i8* %71, i32 %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = call i32 @_doSetFixedOutputState(%struct.TYPE_18__* %76)
  br label %114

78:                                               ; preds = %38
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  %83 = zext i1 %82 to i32
  %84 = call i32 @Assert(i32 %83)
  %85 = call i32 @initPQExpBuffer(%struct.TYPE_17__* %5)
  %86 = call i32 @appendPQExpBufferStr(%struct.TYPE_17__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @PQdb(i32* %89)
  %91 = call i32 @appendConnStrVal(%struct.TYPE_17__* %5, i32 %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i8* @PQhost(i32* %94)
  store i8* %95, i8** %6, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i8* @PQport(i32* %98)
  store i8* %99, i8** %7, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i8* @PQuser(i32* %102)
  store i8* %103, i8** %8, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = bitcast %struct.TYPE_18__* %104 to i32*
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* @TRI_NO, align 4
  %112 = call i32 @ConnectDatabase(i32* %105, i32 %107, i8* %108, i8* %109, i8* %110, i32 %111)
  %113 = call i32 @termPQExpBuffer(%struct.TYPE_17__* %5)
  br label %114

114:                                              ; preds = %78, %47
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  %117 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %119 = call i32 %117(%struct.TYPE_18__* %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @Assert(i32 %124)
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %126
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @pg_strdup(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ConnectDatabase(i32*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @_doSetFixedOutputState(%struct.TYPE_18__*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_17__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @PQdb(i32*) #1

declare dso_local i8* @PQhost(i32*) #1

declare dso_local i8* @PQport(i32*) #1

declare dso_local i8* @PQuser(i32*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
