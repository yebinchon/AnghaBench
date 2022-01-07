; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c__SPI_pquery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c__SPI_pquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@DestSPI = common dso_local global i64 0, align 8
@SPI_OK_UTILITY = common dso_local global i32 0, align 4
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SPI_OK_INSERT_RETURNING = common dso_local global i32 0, align 4
@SPI_OK_INSERT = common dso_local global i32 0, align 4
@SPI_OK_DELETE_RETURNING = common dso_local global i32 0, align 4
@SPI_OK_DELETE = common dso_local global i32 0, align 4
@SPI_OK_UPDATE_RETURNING = common dso_local global i32 0, align 4
@SPI_OK_UPDATE = common dso_local global i32 0, align 4
@SPI_ERROR_OPUNKNOWN = common dso_local global i32 0, align 4
@EXEC_FLAG_SKIP_TRIGGERS = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@_SPI_current = common dso_local global %struct.TYPE_15__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"consistency check on SPI tuple count failed\00", align 1
@ShowExecutorStats = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32)* @_SPI_pquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_SPI_pquery(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %64 [
    i32 129, label %15
    i32 130, label %28
    i32 131, label %40
    i32 128, label %52
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DestSPI, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @SPI_OK_UTILITY, align 4
  store i32 %24, i32* %10, align 4
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @SPI_OK_SELECT, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %66

28:                                               ; preds = %3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SPI_OK_INSERT_RETURNING, align 4
  store i32 %36, i32* %10, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @SPI_OK_INSERT, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %35
  br label %66

40:                                               ; preds = %3
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @SPI_OK_DELETE_RETURNING, align 4
  store i32 %48, i32* %10, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @SPI_OK_DELETE, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %66

52:                                               ; preds = %3
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @SPI_OK_UPDATE_RETURNING, align 4
  store i32 %60, i32* %10, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @SPI_OK_UPDATE, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %66

64:                                               ; preds = %3
  %65 = load i32, i32* @SPI_ERROR_OPUNKNOWN, align 4
  store i32 %65, i32* %4, align 4
  br label %118

66:                                               ; preds = %63, %51, %39, %27
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @EXEC_FLAG_SKIP_TRIGGERS, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ExecutorStart(%struct.TYPE_14__* %73, i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = load i32, i32* @ForwardScanDirection, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ExecutorRun(%struct.TYPE_14__* %76, i32 %77, i32 %78, i32 1)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** @_SPI_current, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @SPI_OK_SELECT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %72
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %90, %72
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DestSPI, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = call i64 (...) @_SPI_checktuples()
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @ERROR, align 4
  %110 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %97, %90
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = call i32 @ExecutorFinish(%struct.TYPE_14__* %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = call i32 @ExecutorEnd(%struct.TYPE_14__* %115)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %112, %64
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @ExecutorStart(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ExecutorRun(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i64 @_SPI_checktuples(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ExecutorFinish(%struct.TYPE_14__*) #1

declare dso_local i32 @ExecutorEnd(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
