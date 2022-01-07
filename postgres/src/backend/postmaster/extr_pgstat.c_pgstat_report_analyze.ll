; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_report_analyze.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_report_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }

@pgStatSock = common dso_local global i64 0, align 8
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@pgstat_track_counts = common dso_local global i32 0, align 4
@PGSTAT_MTYPE_ANALYZE = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgstat_report_analyze(%struct.TYPE_13__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @pgStatSock, align 8
  %12 = load i64, i64* @PGINVALID_SOCKET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @pgstat_track_counts, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %4
  br label %102

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %10, align 8
  br label %29

29:                                               ; preds = %53, %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load i8*, i8** %6, align 8
  %41 = sub i64 0, %39
  %42 = getelementptr i8, i8* %40, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load i8*, i8** %7, align 8
  %51 = sub i64 0, %49
  %52 = getelementptr i8, i8* %50, i64 %51
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %32
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %10, align 8
  br label %29

57:                                               ; preds = %29
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = sub i64 0, %63
  %66 = getelementptr i8, i8* %64, i64 %65
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @Max(i8* %67, i32 0)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @Max(i8* %69, i32 0)
  store i8* %70, i8** %7, align 8
  br label %71

71:                                               ; preds = %57, %18
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %73 = load i32, i32* @PGSTAT_MTYPE_ANALYZE, align 4
  %74 = call i32 @pgstat_setheader(i32* %72, i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @InvalidOid, align 4
  br label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @MyDatabaseId, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 6
  store i32 %86, i32* %87, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = call i32 @RelationGetRelid(%struct.TYPE_13__* %88)
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  store i32 %89, i32* %90, align 8
  %91 = call i32 (...) @IsAutoVacuumWorkerProcess()
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = call i32 (...) @GetCurrentTimestamp()
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  store i32 %95, i32* %96, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i8* %97, i8** %98, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = call i32 @pgstat_send(%struct.TYPE_15__* %9, i32 48)
  br label %102

102:                                              ; preds = %85, %17
  ret void
}

declare dso_local i8* @Max(i8*, i32) #1

declare dso_local i32 @pgstat_setheader(i32*, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_13__*) #1

declare dso_local i32 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @pgstat_send(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
